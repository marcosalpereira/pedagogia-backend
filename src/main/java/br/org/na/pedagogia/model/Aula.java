package br.org.na.pedagogia.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Length;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "aula")
@Getter
@Setter
public class Aula extends BaseModel {
	private static final long serialVersionUID = 1L;
	
	@Column
	private Date data;
	
	@ManyToOne
	private Professor professor;
	
	@OneToMany
	private List<Presenca> presencas;
	
	@ManyToOne
	private Materia materia;
	
	@ManyToOne
	private Capitulo capitulo;
	
	@Length(max = 300)
	private String observacao;
}
