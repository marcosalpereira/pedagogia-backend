package br.org.na.pedagogia.rest;

import java.util.Date;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import br.org.na.pedagogia.business.AulaBC;
import br.org.na.pedagogia.model.Aula;
import br.org.na.pedagogia.repository.AulaRepository;


@RestController
@RequestMapping("/api/aulas")
public class AulaRest {

	@Autowired
	private AulaRepository aulaRepository;
	
	@Autowired
	private AulaBC aulaBC;
	
	@GetMapping
	public ResponseEntity<Aula> find(
			@RequestParam("idTurma") long idTurma,
			@RequestParam("idMateria") long idMateria,
			@NotNull @RequestParam("data") @DateTimeFormat(pattern="yyyy-MM-dd") Date data) {
		
		Example<Aula> ex = Aula.example(idTurma, idMateria, data);
		return ResponseEntity.of(aulaRepository.findOne(ex));
	}

	@PostMapping
	public Aula registrarAula(@RequestBody @Valid Aula aula) {
		return aulaBC.registrarAula(aula);
	}

}
