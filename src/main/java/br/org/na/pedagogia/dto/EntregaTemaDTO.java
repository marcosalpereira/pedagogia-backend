package br.org.na.pedagogia.dto;

import java.util.Date;

import javax.persistence.Column;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class EntregaTemaDTO extends BaseDTO {
	private static final long serialVersionUID = 1L;
	
	private AlunoDTO aluno;
	
	@Column
	private boolean entregue;
	
	@Column
    private Date data;

}
