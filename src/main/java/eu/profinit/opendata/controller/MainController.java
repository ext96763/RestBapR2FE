package eu.profinit.opendata.controller;


import eu.profinit.opendata.model.Record;
import eu.profinit.opendata.retrofitconfiguration.RetrofitConfiguration;
import eu.profinit.opendata.service.OpenDataAPI;
import okhttp3.OkHttpClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import retrofit2.Call;
import retrofit2.Response;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.PageContext;
import java.io.IOException;
import java.lang.reflect.Parameter;
import java.util.List;


/**
 * Controller for front end application. Here are called methods in interface which provide application data. Than data
 * are set to variables in JSP and returned back to user.
 */

@Controller
public class MainController extends HttpServlet{

    @Autowired
    private final OpenDataAPI openDataAPI;

    @Autowired
    RetrofitConfiguration retrofitConfiguration;


    public MainController(OpenDataAPI openDataAPI){this.openDataAPI = openDataAPI;}

    @RequestMapping(value = "/", name = "indexSearchName")
    public String getRecordsByName(HttpServletRequest request) throws IOException{

        OkHttpClient newClient = retrofitConfiguration.okHttpClient();
        OpenDataAPI service = retrofitConfiguration.retrofit(newClient).create(OpenDataAPI.class);
        if(request.getParameter("tender_name") != null) {
            String recordName = request.getParameter("tender_name");
            Response<List<Record>> response = service.getRecordByName(recordName).execute();
            request.setAttribute("records", response.body());
            return "tenderList";
        }
        return "index";
    }

    @RequestMapping(value = "/tenders/search", name = "indexSearchName")
    public String getRecordsByTenders(HttpServletRequest request) throws IOException{
        Double price_from = null;
        Double price_to = null;
        String publication_date_from = null;
        String publication_date_to = null;
        String tenderIco = null;

        OkHttpClient newClient = retrofitConfiguration.okHttpClient();
        OpenDataAPI service = retrofitConfiguration.retrofit(newClient).create(OpenDataAPI.class);
        if(request.getParameter("tender_name") != null) {
            String tenderName = request.getParameter("tender_name");
            Response<List<Record>> response = service.getRecordsByTenders(tenderName, tenderIco,publication_date_from,publication_date_to, price_from,price_to).execute();
            request.setAttribute("records", response.body());
            return "tendersList";
        }
        return "tenders";
    }
    @RequestMapping(value = "/tenders/search/tenderList", name = "indexSearchName")
    public String showRecordsByTenders(HttpServletRequest request) throws IOException{
        Double price_from = null;
        Double price_to = null;
        String publication_date_from = null;
        String publication_date_to = null;

        OkHttpClient newClient = retrofitConfiguration.okHttpClient();

        OpenDataAPI service = retrofitConfiguration.retrofit(newClient).create(OpenDataAPI.class);
        if(request.getParameter("tender_name") != null || request.getParameter("tender_ico") != null || request.getParameter("price_from") != null || request.getParameter("price_to") != null || request.getParameter("publication_date_from") != null || request.getParameter("publication_date_to") != null) {
            String tenderName = request.getParameter("tender_name");
            String tenderIco = request.getParameter("tender_ico");

            if(!"".equals(request.getParameter("publication_date_from").toString())){
                publication_date_from = request.getParameter("publication_date_from");
            }
            if(!"".equals(request.getParameter("publication_date_to").toString())){
                publication_date_to = request.getParameter("publication_date_to");
            }

            if(!"".equals(request.getParameter("price_from").toString())){
                price_from = Double.valueOf(request.getParameter("price_from"));
            }
            if(!"".equals(request.getParameter("price_to").toString())){
                price_to = Double.valueOf(request.getParameter("price_to"));
            }

//            Double price_from = Double.valueOf(request.getParameter("price_from"));
//            Double price_to = Double.valueOf(request.getParameter("price_from"));
//            String publication_date_from = request.getParameter("publication_date_from");
//            String publication_date_to = request.getParameter("publication_date_to");

            Response<List<Record>> response = service.getRecordsByTenders(tenderName,tenderIco, publication_date_from, publication_date_to, price_from, price_to).execute();
            request.setAttribute("records", response.body());
            return "tendersList";
        }
        return "tendersList";
    }

    @RequestMapping(value = "/buyers/search", name = "indexSearchName")
    public String getRecordsByBuyers(HttpServletRequest request) throws IOException{

        OkHttpClient newClient = retrofitConfiguration.okHttpClient();
        OpenDataAPI service = retrofitConfiguration.retrofit(newClient).create(OpenDataAPI.class);
        if(request.getParameter("buyer_name") != null && request.getParameter("buyer_ico") != null) {
            String buyerName = request.getParameter("buyer_ico");
            String buyerIco = request.getParameter("buyer_name");
            Response<List<Record>> response = service.getRecordsByCustomers(buyerIco, buyerName).execute();
            request.setAttribute("records", response.body());
            return "buyers";
        }
        return "buyers";
    }

    @RequestMapping(value = "/suppliers/search", name = "indexSearchName")
    public String getRecordsBySuppliers(HttpServletRequest request) throws IOException{

        OkHttpClient newClient = retrofitConfiguration.okHttpClient();
        OpenDataAPI service = retrofitConfiguration.retrofit(newClient).create(OpenDataAPI.class);
        if(request.getParameter("supplier_name") != null && request.getParameter("supplier_ico") != null) {
            String supplierName = request.getParameter("supplier_name");
            String supplierIco = request.getParameter("supplier_ico");
            Response<List<Record>> response = service.getRecordsBySuppliers(supplierIco, supplierName).execute();
            request.setAttribute("records", response.body());
            return "suppliers";
        }
        return "suppliers";
    }

}