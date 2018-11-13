package br.org.na.pedagogia.rest;

import java.time.DayOfWeek;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import br.org.na.pedagogia.business.TurmaBC;
import br.org.na.pedagogia.dto.MateriaDTO;
import br.org.na.pedagogia.dto.MateriasDaTurmaDTO;
import br.org.na.pedagogia.dto.TurmaDTO;
import br.org.na.pedagogia.exception.NotFoundException;
import br.org.na.pedagogia.model.Turma;
import br.org.na.pedagogia.repository.TurmaRepository;


@RestController
@RequestMapping("/turmas")
public class TurmaController {

	@Autowired
	private TurmaRepository repository;
	
	@Autowired
	private TurmaBC turmaBC;
	
	@GetMapping
	public List<TurmaDTO> findAll(
			@RequestParam("idSede") long idSede,
			@RequestParam("diaSemana") DayOfWeek diaSemana) {
		Example<Turma> ex = Example.of(new Turma(idSede, diaSemana));
		return turmaBC.findAll(ex, TurmaDTO.class);
	}
	
	@GetMapping("{id}/materias")
	public List<MateriaDTO> findMaterias(
			@PathVariable("id") long idTurma) {
		Example<Turma> ex = Example.of(new Turma(idTurma));
		return turmaBC.findOne(ex, MateriasDaTurmaDTO.class)
				.map(dto -> dto.getMaterias())
				.orElseThrow(() -> new NotFoundException());
	}
	
	@PostMapping
	public Long add(@RequestBody @Valid Turma turma) {
		Turma entity = repository.save(turma);
		return entity.getId();
	}
}
