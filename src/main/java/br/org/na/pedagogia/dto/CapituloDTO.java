package br.org.na.pedagogia.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CapituloDTO extends BaseDTO {

	private static final long serialVersionUID = 1;
	
	private Integer numero;
	
	private String nome;

}
