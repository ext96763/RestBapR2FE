package eu.profinit.opendata.retrofitconfiguration;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import eu.profinit.opendata.service.OpenDataAPI;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import retrofit2.GsonConverterFactory;
import retrofit2.Retrofit;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;

/**
 * Retrofit Bean configuration class. Builders of request and response. Logger for req and response.
 */

@Configuration
public class RetrofitConfiguration {

    @Bean
    public OkHttpClient okHttpClient(){
        Logger logger = Logger.getLogger("LoggingInterceptor");

        OkHttpClient okClient = new OkHttpClient.Builder()
                .addInterceptor(
                        new Interceptor() {
                            @Override
                            public Response intercept(Interceptor.Chain chain) throws IOException {
                                Request original = chain.request();
                                Long t1 = System.nanoTime();
                                logger.info(String.format("Sending req for %s", original.url(), chain.connection(), original.headers()));

                                Request.Builder requestBuilder = original.newBuilder()
                                        .headers(original.headers())
                                        .method(original.method(), original.body());


                                Request request = requestBuilder.build();

                                Response response = chain.proceed(request);

                                long t2 = System.nanoTime();
                                logger.info(String.format("Received response for %s in %.1fms%n%s",
                                response.request().url(), (t2 - t1) / 1e6d, response.headers()));

                                return response;
                            }
                        })
                .readTimeout(15, TimeUnit.SECONDS)
                .connectTimeout(15,TimeUnit.SECONDS)
                .build();
        return okClient;
    }

    @Bean
    public Retrofit retrofit(OkHttpClient client) {
        Gson gSon=  new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return new Retrofit.Builder()
                .addConverterFactory(GsonConverterFactory.create(gSon))
                .baseUrl("http://localhost:8080/")
                .client(client)
                .build();
    }

    @Bean
    public OpenDataAPI recordService(Retrofit retrofit){
        return retrofit.create(OpenDataAPI.class);
    }
}
