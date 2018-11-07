package br.org.na.pedagogia.rest;

import java.time.DayOfWeek;
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

import br.org.na.pedagogia.dto.TurmaDTO;
import br.org.na.pedagogia.model.Turma;
import br.org.na.pedagogia.repository.TurmaRepository;


@RestController
@RequestMapping("/turmas")
public class TurmaController {

	@Autowired
	private TurmaRepository repository;
	
	@GetMapping
	public List<TurmaDTO> findAll(@RequestParam("diaSemana") DayOfWeek diaSemana) {
		Example<Turma> ex = Example.of(new Turma(diaSemana));
		return repository.findAll(ex).stream()
          .map(entity -> entity.toDTO(TurmaDTO.class))
          .collect(Collectors.toList());
	}
	
	@PostMapping
	public Long add(@RequestBody @Valid Turma turma) {
		Turma entity = repository.save(turma);
		return entity.getId();
	}
}
