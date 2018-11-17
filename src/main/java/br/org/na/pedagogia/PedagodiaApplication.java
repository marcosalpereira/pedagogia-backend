package br.org.na.pedagogia;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.datatype.hibernate5.Hibernate5Module;
import com.fasterxml.jackson.datatype.hibernate5.Hibernate5Module.Feature;

@SpringBootApplication
public class PedagodiaApplication {

	public static void main(String[] args) {
		SpringApplication.run(PedagodiaApplication.class, args);
		System.out.println(new BCryptPasswordEncoder().encode("123"));
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

	@Bean
	public MappingJackson2HttpMessageConverter jacksonMessageConverter() {
		MappingJackson2HttpMessageConverter messageConverter = new MappingJackson2HttpMessageConverter();
		ObjectMapper mapper = new ObjectMapper();
		Hibernate5Module hibernateModule = new Hibernate5Module();
		hibernateModule.configure(Feature.FORCE_LAZY_LOADING, false);
		hibernateModule.configure(Feature.SERIALIZE_IDENTIFIER_FOR_LAZY_NOT_LOADED_OBJECTS, true);
		mapper.registerModule(hibernateModule);
		messageConverter.setObjectMapper(mapper);
		mapper.disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
		//		mapper.setDateFormat(new StdDateFormat());
		return messageConverter;
	}

}
