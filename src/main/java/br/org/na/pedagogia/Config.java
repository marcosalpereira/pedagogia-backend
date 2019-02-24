package br.org.na.pedagogia;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

@Service
public class Config {
	
	@Autowired
	private Environment env;
	
	public String getRootFolder() {
		return env.getRequiredProperty("app.data-root-folder");
	}
}
