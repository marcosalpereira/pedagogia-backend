package br.org.na.pedagogia.dto;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class MateriaDTO extends BaseDTO {
	private static final long serialVersionUID = 1L;
	private String nome;
	private List<TemaDTO> temas;
}
