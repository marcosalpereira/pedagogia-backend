package br.org.na.pedagogia.rest;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import br.org.na.pedagogia.dto.AulaDTO;
import br.org.na.pedagogia.model.Aula;
import br.org.na.pedagogia.repository.AulaRepository;


@RestController
@RequestMapping("/aulas")
public class AulaController {

	@Autowired
	private AulaRepository aulaRepository;

	@GetMapping
	public List<AulaDTO> findAll(
			@RequestParam("idMateria") long idTurma,
			@RequestParam("idProfessor") long idProfessor,
			@RequestParam("idMateria") long idMateria,
			@NotNull @RequestParam("data") @DateTimeFormat(pattern="yyyy-MM-dd") Date data) {
		Example<Aula> ex = Example.of(new Aula(idTurma, idMateria, idProfessor, data));
		return aulaRepository.findAll(ex).stream()
		          .map(entity -> entity.toDTO(AulaDTO.class))
		          .collect(Collectors.toList());
	}
	
	@PostMapping
	public Long registrarAula(@RequestBody @Valid Aula aula) {
		Aula entity = aulaRepository.save(aula);
		return entity.getId();
	}
	
}