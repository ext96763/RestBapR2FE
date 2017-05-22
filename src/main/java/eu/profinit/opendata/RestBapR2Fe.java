package eu.profinit.opendata;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * Main application class. Here the application can be started with args.
 */

@SpringBootApplication
@ComponentScan()
public class RestBapR2Fe {

    public static void main(String[] args){
        SpringApplication.run(RestBapR2Fe.class, args);
    }
}
