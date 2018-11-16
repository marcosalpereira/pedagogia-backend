package br.org.na.pedagogia.rest;

import java.util.Date;
import java.util.List;

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
import br.org.na.pedagogia.dto.BaseDTO;
import br.org.na.pedagogia.dto.PresencaDTO;
import br.org.na.pedagogia.dto.ProfessorDTO;
import br.org.na.pedagogia.dto.TemaDTO;
import br.org.na.pedagogia.model.Aula;
import br.org.na.pedagogia.repository.AulaRepository;
import lombok.Getter;
import lombok.Setter;


@RestController
@RequestMapping("/aulas")
public class AulaController {

	@Autowired
	private AulaRepository aulaRepository;

	@Autowired
	private AulaBC aulaBC;
	
	@GetMapping
	public ResponseEntity<AulaDTO> find(
					 @RequestParam("idTurma") long idTurma,
					 @RequestParam("idMateria") long idMateria,
			@NotNull @RequestParam("data") @DateTimeFormat(pattern="yyyy-MM-dd") Date data) {
		Example<Aula> ex = Example.of(new Aula(idTurma, idMateria, data));
		return ResponseEntity.of(aulaBC.findOne(ex, AulaDTO.class));
	}
	
	@PostMapping
	public Long registrarAula(@RequestBody @Valid Aula aula) {
		aula.getPresencas().forEach(p -> p.setAula(aula));
		Aula entity = aulaRepository.save(aula);
		return entity.getId();
	}
	
	@Getter
	@Setter
	public static class CapituloDTO extends BaseDTO {
		private static final long serialVersionUID = 1;
		private TemaDTO tema;
		private Integer numero;
		private String nome;
	}
	
	public static class MateriaDTO extends BaseDTO {
		private static final long serialVersionUID = 1L;
	}
	
	public static class TurmaDTO extends BaseDTO {
		private static final long serialVersionUID = 1;
	}	
	
	@Getter @Setter
	public static class AulaDTO extends BaseDTO {
		private static final long serialVersionUID = 1L;
		private TurmaDTO turma;
		private MateriaDTO materia;
		private ProfessorDTO professor;
		private CapituloDTO capitulo;
		private String observacao;
		private List<PresencaDTO> presencas;
	}
	
}
