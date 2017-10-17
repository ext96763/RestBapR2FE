package eu.profinit.opendata.config;

import eu.profinit.opendata.OpenDataFeApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

/**
 * Config class. Must to have implemented for tomcat to properly work with jsp
 */
public class WebInitializer extends SpringBootServletInitializer {
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(OpenDataFeApplication.class);
    }
}
