package br.org.na.pedagogia.dto;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AulaDTO extends BaseDTO {
	private static final long serialVersionUID = 1L;
	
	private Date data;
	
	private List<PresencaDTO> presencas;
	
	private String observacao;
	
	
}
