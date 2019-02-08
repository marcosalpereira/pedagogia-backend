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
import br.org.na.pedagogia.model.Aluno;
import br.org.na.pedagogia.model.Materia;
import br.org.na.pedagogia.model.Professor;
import br.org.na.pedagogia.model.Turma;
import br.org.na.pedagogia.repository.TurmaRepository;


@RestController
@RequestMapping("/api/turmas")
public class TurmaController {

	@Autowired
	private TurmaRepository repository;
	
	@Autowired
	private TurmaBC turmaBC;
	
	@GetMapping
	public List<Turma> findAll(
			@RequestParam("idSede") long idSede,
			@RequestParam("diaSemana") DayOfWeek diaSemana) {
		Example<Turma> ex = Example.of(new Turma(idSede, diaSemana));
		List<Turma> findAll = repository.findAll(ex);
		return findAll;
	}
	
	@GetMapping("{id}/professores")
	public List<Professor> findProfessores(@PathVariable("id") long idTurma) {
		return turmaBC.findById(idTurma, turma -> turma.getProfessores());
	}
	
	@GetMapping("{id}/materias")
	public List<Materia> findMaterias(@PathVariable("id") long idTurma) {
		return turmaBC.findById(idTurma, turma -> turma.getMaterias());
	}	
	
	@GetMapping("{id}/alunos")
	public List<Aluno> findAlunos(@PathVariable("id") long idTurma) {
		return turmaBC.findById(idTurma, turma -> turma.getAlunos());
	}
	
	@PostMapping
	public Long add(@RequestBody @Valid Turma turma) {
		Turma entity = repository.save(turma);
		return entity.getId();
	}
}
