package br.org.na.pedagogia.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "presenca")
@Getter @Setter
@JsonIgnoreProperties(value = {"aula"}, allowSetters=true)
public class Presenca extends BaseModel {

	private static final long serialVersionUID = 1L;
	
	@NotNull
	@ManyToOne
	private Aula aula;

	@NotNull
	@ManyToOne
	private Aluno aluno;
	
	@Column
	private Boolean presente;
	
}
