package br.org.na.pedagogia.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.org.na.pedagogia.model.Turma;
import br.org.na.pedagogia.repository.TurmaRepository;


@RestController
@RequestMapping("/turmas")
public class TurmaController {

	@Autowired
	private TurmaRepository repository;
	
	@GetMapping
	public List<Turma> findAll() {
		return repository.findAll();
	}
	
	
}
