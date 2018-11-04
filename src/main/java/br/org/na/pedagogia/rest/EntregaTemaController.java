package br.org.na.pedagogia.rest;

import java.util.List;

import javax.validation.Valid;
import javax.validation.constraints.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import br.org.na.pedagogia.model.EntregaTema;
import br.org.na.pedagogia.model.Turma;
import br.org.na.pedagogia.repository.EntregaTemaRepository;


@RestController
@RequestMapping("/entregas-tema")
public class EntregaTemaController {

	@Autowired
	private EntregaTemaRepository repository;

	@GetMapping
	public List<EntregaTema> findAll(
			@Pattern(regexp="[0-9]+") @RequestParam("idTurma") Long idTurma) {
		return repository.findByTurma(new Turma(idTurma));
	}
	
	@PostMapping
	public Long entregarTema(@RequestBody @Valid EntregaTema entrega) {
		EntregaTema entity = repository.save(entrega);
		return entity.getId();
	}
	
}
