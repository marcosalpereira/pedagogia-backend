package br.org.na.pedagogia.dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@JsonIgnoreProperties(value = {"turma", "tema"}, allowGetters = false, allowSetters = true)
public class EntregaTemaDTO extends BaseDTO {
	private static final long serialVersionUID = 1L;
	private TurmaDTO turma;
	private TemaDTO tema;
	private AlunoDTO aluno;
	private boolean entregue;
    private Date data;
}
