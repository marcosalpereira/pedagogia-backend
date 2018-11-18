package br.org.na.pedagogia.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class CorsConfig {
	@Bean
	public WebMvcConfigurer corsConfigurer() {
		return new WebMvcConfigurer() {
			@Override
			public void addCorsMappings(CorsRegistry registry) {
				registry.addMapping("/**")
				.allowedOrigins("http://localhost:4200")
				.allowedMethods("*")
				//					.allowedHeaders("Content-Type", "Date", "Total-Count", "loginInfo", "jwt_token")
				//					.exposedHeaders("Content-Type", "Date", "Total-Count", "loginInfo", "jwt_token")
				.maxAge(3600);
			}
		};
	}

}