package br.org.na.pedagogia.rest;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.org.na.pedagogia.model.Aluno;
import br.org.na.pedagogia.repository.AlunoRepository;


@RestController
@RequestMapping("/alunos")
public class AlunoController {

	@Autowired
	private AlunoRepository repository;

	@PostMapping
	public Long save(@RequestBody @Valid Aluno aluno) {
		Aluno entity = repository.save(aluno);
		return entity.getId();
	}

	@GetMapping
	public List<Aluno> findAll() {
		return repository.findAll();
	}

	@GetMapping("/{id}")
	public ResponseEntity<Aluno> findById(@PathVariable("id") Long id) {
		return ResponseEntity.of(repository.findById(id));
	}

}
