package br.org.na.pedagogia.dto;

import br.org.na.pedagogia.model.Aluno;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PresencaDTO extends BaseDTO {

	private static final long serialVersionUID = 1L;

	private Aluno aluno;

	private boolean presente;

}
