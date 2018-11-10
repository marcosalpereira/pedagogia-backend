package br.org.na.pedagogia.rest;

import java.util.List;
import java.util.stream.Collectors;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import br.org.na.pedagogia.model.EntregaTema;
import br.org.na.pedagogia.repository.EntregaTemaRepository;


@RestController
@RequestMapping("/entregas-tema")
public class EntregaTemaController {

	@Autowired
	private EntregaTemaRepository repository;

	@GetMapping
	public List<EntregaTema> findAll(
			@RequestParam("idTurma") long idTurma,
			@RequestParam("idTema") long idTema
			) {
		Example<EntregaTema> ex = Example.of(new EntregaTema(idTurma, idTema));
		return repository.findAll(ex);
	}
	
	@PostMapping
	public List<Long> registrarEntrega(@RequestBody @Valid List<EntregaTema> entregas) {
		List<EntregaTema> entity = repository.saveAll(entregas);
		return entity.stream().map(e -> e.getId()).collect(Collectors.toList());
	}
	
}
