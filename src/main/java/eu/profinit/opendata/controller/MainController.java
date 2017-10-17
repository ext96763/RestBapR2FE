package eu.profinit.opendata.controller;


import eu.profinit.opendata.model.Record;
import eu.profinit.opendata.model.Retrieval;
import eu.profinit.opendata.retrofitconfiguration.RetrofitConfiguration;
import eu.profinit.opendata.service.OpenDataAPI;
import eu.profinit.opendata.utils.Links;
import okhttp3.OkHttpClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import retrofit2.Response;
import eu.profinit.opendata.utils.WebUtils;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


/**
 * Controller for front end application. Here are called methods in interface which provide application data. Than data
 * are set to variables in JSP and returned back to user.
 */

@Controller
public class MainController extends HttpServlet {

    @Autowired
    private final OpenDataAPI openDataAPI;

    @Autowired
    RetrofitConfiguration retrofitConfiguration;

    @Autowired
    WebUtils webUtils;

    @Autowired
    Links links;


    public MainController(OpenDataAPI openDataAPI) {
        this.openDataAPI = openDataAPI;
    }

    @RequestMapping(value = "/", name = "indexSearchName")
    public String getRecordsByName(HttpServletRequest request) throws IOException {

        OkHttpClient newClient = retrofitConfiguration.okHttpClient();
        OpenDataAPI service = retrofitConfiguration.retrofit(newClient).create(OpenDataAPI.class);
        if (request.getParameter("tender_name") != null) {
            String recordName = request.getParameter("tender_name");
            Response<List<Record>> response = service.getRecordByName(recordName).execute();
            request.setAttribute("records", response.body());
            return "tenderList";
        }
        return "index";
    }

    @RequestMapping(value = "/tenders/search", name = "tenders")
    public String getRecordsByTenders(HttpServletRequest request) throws IOException {
        Double price_from = null;
        Double price_to = null;
        String publication_date_from = null;
        String publication_date_to = null;
        String tenderIco = null;

        OkHttpClient newClient = retrofitConfiguration.okHttpClient();
        OpenDataAPI service = retrofitConfiguration.retrofit(newClient).create(OpenDataAPI.class);
        if (request.getParameter("tender_name") != null) {
            String tenderName = request.getParameter("tender_name");
            Response<List<Record>> response = service.getRecordsByTenders(tenderName, tenderIco, publication_date_from, publication_date_to, price_from, price_to).execute();
            request.setAttribute("records", response.body());
            return "tendersList";
        }
        return "tenders";
    }

    @RequestMapping(value = "/tenders/search/tendersList", name = "tendersList")
    public String showRecordsByTenders(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Double price_from = null;
        Double price_to = null;
        String publication_date_from = null;
        String publication_date_to = null;

        OkHttpClient newClient = retrofitConfiguration.okHttpClient();

        OpenDataAPI service = retrofitConfiguration.retrofit(newClient).create(OpenDataAPI.class);
        if (request.getParameter("tender_name") != null || request.getParameter("tender_ico") != null || request.getParameter("price_from") != null || request.getParameter("price_to") != null || request.getParameter("publication_date_from") != null || request.getParameter("publication_date_to") != null) {
            String tenderName = request.getParameter("tender_name");
            String tenderIco = request.getParameter("tender_ico");

            if (!StringUtils.isEmpty(request.getParameter("publication_date_from"))) {
                publication_date_from = request.getParameter("publication_date_from");
            }
            if (!StringUtils.isEmpty(request.getParameter("publication_date_to"))) {
                publication_date_to = request.getParameter("publication_date_to");
            }

            if (!StringUtils.isEmpty(request.getParameter("price_from"))) {
                price_from = Double.valueOf(request.getParameter("price_from"));
            }
            if (!StringUtils.isEmpty(request.getParameter("price_to"))) {
                price_to = Double.valueOf(request.getParameter("price_to"));
            }

            Response<List<Record>> res = service.getRecordsByTenders(tenderName, tenderIco, publication_date_from, publication_date_to, price_from, price_to).execute();
//            Map<String, String> map = new HashMap<String, String>();
//            map = links.getHeadersInfo(res);
            request.setAttribute("records", res.body());
            return "tendersList";
        }
        return "tendersList";
    }

    @RequestMapping(value = "/buyers/search", name = "buyers")
    public String getRecordsByBuyers(HttpServletRequest request) throws IOException {

        OkHttpClient newClient = retrofitConfiguration.okHttpClient();
        OpenDataAPI service = retrofitConfiguration.retrofit(newClient).create(OpenDataAPI.class);
        if (request.getParameter("buyer_name") != null && request.getParameter("buyer_ico") != null) {
            String buyerName = StringUtils.isEmpty(request.getParameter("buyer_ico")) ? null : request.getParameter("buyer_ico");
            String buyerIco = StringUtils.isEmpty(request.getParameter("buyer_name")) ? null : request.getParameter("buyer_name");
            Response<List<Record>> response = service.getRecordsByCustomers(buyerIco, buyerName).execute();
            request.setAttribute("records", response.body());
            return "buyers";
        }
        return "buyers";
    }

    @RequestMapping(value = "/buyers/search/buyersList", name = "buyersList")
    public String showRecordsByBuyers(HttpServletRequest request, HttpServletResponse response) throws IOException {
        OkHttpClient newClient = retrofitConfiguration.okHttpClient();

        OpenDataAPI service = retrofitConfiguration.retrofit(newClient).create(OpenDataAPI.class);
        if (request.getParameter("buyer_name") != null || request.getParameter("buyer_ico") != null || request.getParameter("price_from") != null || request.getParameter("price_to") != null || request.getParameter("publication_date_from") != null || request.getParameter("publication_date_to") != null) {
            String buyerIco = StringUtils.isEmpty(request.getParameter("buyer_ico")) ? null : request.getParameter("buyer_ico");
            String buyerName = StringUtils.isEmpty(request.getParameter("buyer_name")) ? null : request.getParameter("buyer_name");
            Response<List<Record>> res = service.getRecordsByCustomers(buyerIco, buyerName).execute();
//            Map<String, String> map = new HashMap<String, String>();
//            map = links.getHeadersInfo(res);
            request.setAttribute("records", res.body());
            return "buyersList";
        }
        return "buyers";
    }

    @RequestMapping(value = "/suppliers/search", name = "indexSearchName")
    public String getRecordsBySuppliers(HttpServletRequest request) throws IOException {

        OkHttpClient newClient = retrofitConfiguration.okHttpClient();
        OpenDataAPI service = retrofitConfiguration.retrofit(newClient).create(OpenDataAPI.class);
        if (request.getParameter("supplier_name") != null && request.getParameter("supplier_ico") != null) {
            String supplierName = StringUtils.isEmpty(request.getParameter("supplier_name")) ? null : request.getParameter("supplier_name");
            String supplierIco = StringUtils.isEmpty(request.getParameter("supplier_ico")) ? null : request.getParameter("supplier_ico");
            Response<List<Record>> response = service.getRecordsBySuppliers(supplierIco, supplierName).execute();
            request.setAttribute("records", response.body());
            return "suppliers";
        }
        return "suppliers";
    }

    @RequestMapping(value = "/suppliers/search/suppliersList")
    public String showRecordsBySuppliers(HttpServletRequest request, HttpServletResponse response) throws IOException {
        OkHttpClient newClient = retrofitConfiguration.okHttpClient();

        OpenDataAPI service = retrofitConfiguration.retrofit(newClient).create(OpenDataAPI.class);
        if (request.getParameter("supplier_name") != null || request.getParameter("supplier_ico") != null || request.getParameter("price_from") != null || request.getParameter("price_to") != null || request.getParameter("publication_date_from") != null || request.getParameter("publication_date_to") != null) {
            String supplierName = StringUtils.isEmpty(request.getParameter("supplier_name")) ? null : request.getParameter("supplier_name");
            String supplierIco = StringUtils.isEmpty(request.getParameter("supplier_ico")) ? null : request.getParameter("supplier_ico");
            Response<List<Record>> res = service.getRecordsBySuppliers(supplierName, supplierIco).execute();
//            Map<String, String> map = new HashMap<String, String>();
//            map = links.getHeadersInfo(res);
            request.setAttribute("records", res.body());
            return "suppliersList";
        }
        return "suppliers";
    }

    @RequestMapping(value = "/data", name = "lastUpdatedDate")
    public String findLastUpdatedDate(HttpServletRequest request) throws IOException {

        OkHttpClient newClient = retrofitConfiguration.okHttpClient();
        OpenDataAPI service = retrofitConfiguration.retrofit(newClient).create(OpenDataAPI.class);
        Response<List<Retrieval>> response = service.findLastUpdatedDate().execute();
        request.setAttribute("retrieval", WebUtils.formatLongToDate(response.body().get(0).getDate()));
        return "data";
    }

    @RequestMapping(value = "/api", name = "lastUpdatedDate")
    public String adiDocumentation(HttpServletRequest request) throws IOException {
        return "api";
    }

    @RequestMapping(value = "/about_project", name = "lastUpdatedDate")
    public String aboutProject(HttpServletRequest request) throws IOException {

        ArrayList links = (ArrayList) request.getAttribute("Links");
        return "about_project";
    }

}