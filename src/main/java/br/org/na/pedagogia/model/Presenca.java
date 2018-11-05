package br.org.na.pedagogia.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "presenca")
public class Presenca extends BaseModel {

	private static final long serialVersionUID = 1L;
	
	@JsonIgnore
	@ManyToOne
	private Aula aula;

	@ManyToOne
	private Aluno aluno;
	
	@Column
	private boolean presente;
	
}
