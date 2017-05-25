package eu.profinit.opendata.utils;

import eu.profinit.opendata.model.Record;
import org.springframework.stereotype.Component;
import retrofit2.Response;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by User on 25.05.2017.
 */

@Component
public class Links {

    public Map<String, String> getHeadersInfo(Response<List<Record>> response) {

        Map<String, String> map = new HashMap<String, String>();

        String[] nextPage = response.headers().get("Links").split(",");
        return map;
    }

}