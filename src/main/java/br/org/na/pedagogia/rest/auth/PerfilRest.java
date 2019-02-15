package br.org.na.pedagogia.rest.auth;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.org.na.pedagogia.model.auth.Perfil;
import br.org.na.pedagogia.repository.auth.PerfilRepository;


@RestController
@RequestMapping("/api/perfils")
public class PerfilRest {

	@Autowired
	private PerfilRepository repository;
	
	@GetMapping
	@Secured("ROLE_ADMIN")
	public List<Perfil> findAll() {
		return repository.findAll();
	}

}
