package br.org.na.pedagogia.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.org.na.pedagogia.model.Sede;
import br.org.na.pedagogia.repository.SedeRepository;

@RestController
@RequestMapping("/api/sedes")
public class SedeRest {

	@Autowired
	private SedeRepository repository;

	@GetMapping
	public List<Sede> findAll() {
		return repository.findAll();
	}
}
