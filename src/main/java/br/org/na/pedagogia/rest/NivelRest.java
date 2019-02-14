package br.org.na.pedagogia.rest;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.org.na.pedagogia.model.Nivel;
import br.org.na.pedagogia.repository.NivelRepository;


@RestController
@RequestMapping("/api/niveis")
public class NivelRest {

	@Autowired
	private NivelRepository repository;

	@GetMapping("{id}")
	public ResponseEntity<Nivel> findById(
			@PathVariable("id") long id) {
		Optional<Nivel> nivel = repository.findById(id);
		return ResponseEntity.of(nivel);
	}
}
