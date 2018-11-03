package br.org.na.pedagogia.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Length;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "turma")
@Getter
@Setter
public class Turma extends BaseModel {

	private static final long serialVersionUID = 1;

	@Length(max = 100)
	private String nome;

	@OneToMany
	private List<Professor> professores;

	@OneToMany
	private List<Aluno> alunos;
}
