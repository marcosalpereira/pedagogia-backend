package br.org.na.pedagogia.dto;

import br.org.na.pedagogia.model.BaseModel;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProfessorDTO extends BaseModel {
	private static final long serialVersionUID = 1L;

	private String nome;

}
