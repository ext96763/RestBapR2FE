package eu.profinit.opendata.service;

import eu.profinit.opendata.model.Record;
import eu.profinit.opendata.model.Retrieval;
import org.springframework.stereotype.Component;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;
import java.util.List;

/**
 * Class dedicated to get data from api in defined paths.
 */

@Component
public interface OpenDataAPI {

    @GET("api/search")
    Call<List<Record>> getRecordByName(@Query(value = "name", encoded = true) String name);

    @GET("api/suppliers/search")
    Call<List<Record>> getRecordsBySuppliers(@Query("name") String name, @Query("ico") String ico);

    @GET("api/buyers/search")
    Call<List<Record>> getRecordsByCustomers(@Query("ico") String ico, @Query("name") String name);

    @GET("api/tenders/search")
    Call<List<Record>> getRecordsByTenders(@Query("name") String name, @Query("ico") String ico, @Query("dateFrom") String dateFrom, @Query("dateTo") String dateTo, @Query("volumeFrom") Double volumeFrom, @Query("volumeTo") Double volumeTo);

    @GET("api/lastUpdate")
    Call<List<Retrieval>> findLastUpdatedDate();
}
