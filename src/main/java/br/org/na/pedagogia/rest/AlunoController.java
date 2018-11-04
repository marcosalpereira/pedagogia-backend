package br.org.na.pedagogia.rest;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.org.na.pedagogia.model.Aluno;
import br.org.na.pedagogia.repository.AlunoRepository;


@RestController
@RequestMapping("/alunos")
public class AlunoController {

	@Autowired
	private AlunoRepository repository;
	
	@GetMapping
	public List<Aluno> findAll() {
		return repository.findAll();
	}
	
	@GetMapping("/{id}")
	public Optional<Aluno> alunos(@PathVariable("id") Long id) {
		return repository.findById(id);
	}
	
}
