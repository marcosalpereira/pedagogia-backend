package br.org.na.pedagogia;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication
public class PedagodiaApplication {

	public static void main(String[] args) {
		SpringApplication.run(PedagodiaApplication.class, args);
	}

    @Bean
    public WebMvcConfigurer corsConfigurer() {
        return new WebMvcConfigurer() {
            @Override
            public void addCorsMappings(CorsRegistry registry) {
            	registry.addMapping("/**")
                .allowedOrigins("http://localhost:4200")
                .allowedMethods("*")
//                .allowedHeaders("Content-Type", "Date", "Total-Count", "loginInfo","jwt_token")
//                .exposedHeaders("Content-Type", "Date", "Total-Count", "loginInfo", "jwt_token")
                .maxAge(3600);
            }
        };
    }
    
}
