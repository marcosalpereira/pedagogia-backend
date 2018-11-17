package br.org.na.pedagogia.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "aluno")
@Getter
@Setter
public class Aluno extends BaseModel {
	private static final long serialVersionUID = 1L;

	@NotNull
	@Size(max = 100)
	private String nome;

	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	private Sede sede;

}
