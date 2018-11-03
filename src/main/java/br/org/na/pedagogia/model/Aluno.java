package br.org.na.pedagogia.model;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Length;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "aluno")
@Getter
@Setter
public class Aluno extends BaseModel {
	private static final long serialVersionUID = 1L;

	@Length(max = 100)
	private String nome;

	@ManyToOne(optional = false)
	private Sede sede;

}
