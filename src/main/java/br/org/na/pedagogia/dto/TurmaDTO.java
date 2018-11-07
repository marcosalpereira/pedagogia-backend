package br.org.na.pedagogia.dto;

import java.time.DayOfWeek;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TurmaDTO extends BaseDTO {
	private static final long serialVersionUID = 1;
	
	private String nome;
	private List<ProfessorDTO> professores;
	private List<AlunoDTO> alunos;
	private AlunoDTO representante;
	private DayOfWeek diaSemana;
}
