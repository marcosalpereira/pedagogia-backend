package br.org.na.pedagogia.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PresencaDTO extends BaseDTO {

	private static final long serialVersionUID = 1L;
	
	private AlunoDTO aluno;
	
	private boolean presente;
	
}
