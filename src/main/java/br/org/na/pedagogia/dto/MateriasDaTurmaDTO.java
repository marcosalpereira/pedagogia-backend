package br.org.na.pedagogia.dto;

import java.io.Serializable;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MateriasDaTurmaDTO implements Serializable {
	private static final long serialVersionUID = 1;
	private List<MateriaDTO> materias;
}
