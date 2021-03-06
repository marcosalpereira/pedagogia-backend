package br.org.na.pedagogia;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.datatype.hibernate5.Hibernate5Module;
import com.fasterxml.jackson.datatype.hibernate5.Hibernate5Module.Feature;

@SpringBootApplication
public class PedagodiaApplication {

	public static void main(String[] args) {
		SpringApplication.run(PedagodiaApplication.class, args);
		//j@lNa@Fortaleza
//		String s = new BCryptPasswordEncoder().encode("jpan-diana");
//		System.out.println(s);
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
