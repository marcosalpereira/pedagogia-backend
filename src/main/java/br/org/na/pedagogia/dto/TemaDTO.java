package br.org.na.pedagogia.dto;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TemaDTO extends BaseDTO {
	private static final long serialVersionUID = 1;
	private Integer numero;
	private String nome;
	private List<CapituloDTO> capitulos;
}
