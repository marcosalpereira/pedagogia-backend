package br.org.na.pedagogia.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.org.na.pedagogia.model.Materia;
import br.org.na.pedagogia.repository.MateriaRepository;


@RestController
@RequestMapping("/api/materias")
public class MateriaController {

	@Autowired
	private MateriaRepository repository;
	
	@GetMapping(produces="application/json")
	public List<Materia> findAll() {
		return repository.findAll();
	}
	
	
}
