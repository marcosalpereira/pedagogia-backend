package br.org.na.pedagogia.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "turma")
@Getter
@Setter
public class Turma extends BaseModel {

	private static final long serialVersionUID = 1;

	@NotNull
	@Length(max = 100)
	private String nome;

	@OneToMany
	private List<Professor> professores;

	@OneToMany
	private List<Aluno> alunos;
	
	@OneToOne
	private Aluno representante;
}
