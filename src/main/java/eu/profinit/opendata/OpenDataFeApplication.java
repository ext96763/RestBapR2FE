package eu.profinit.opendata;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * Main application class. Here the application can be started with args.
 */

@SpringBootApplication
@ComponentScan()
public class OpenDataFeApplication {

    public static void main(String[] args){
        SpringApplication.run(OpenDataFeApplication.class, args);
    }
}
