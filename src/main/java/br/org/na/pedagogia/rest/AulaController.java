package br.org.na.pedagogia.rest;

import java.util.Date;
import java.util.List;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import br.org.na.pedagogia.model.Aula;
import br.org.na.pedagogia.repository.AulaRepository;


@RestController
@RequestMapping("/aulas")
public class AulaController {

	@Autowired
	private AulaRepository aulaRepository;

	@GetMapping
	@JsonIgnoreProperties(value = {"professor", "materia", "capitulo"})
	public List<Aula> findAll(
			@Pattern(regexp="[0-9]+") @RequestParam("idMateria") Long idMateria,
			@NotNull @RequestParam("data") @DateTimeFormat(pattern="yyyy-MM-dd") Date data,
			@Pattern(regexp="[0-9]+") @RequestParam("idProfessor") Long idProfessor) {
		Example<Aula> ex = Example.of(new Aula(idMateria, idProfessor, data));
		return aulaRepository.findAll(ex);
	}
	
	@PostMapping
	public Long registrarAula(@RequestBody @Valid Aula aula) {
		Aula entity = aulaRepository.save(aula);
		return entity.getId();
	}
	
}
