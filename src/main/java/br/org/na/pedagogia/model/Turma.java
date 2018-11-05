package br.org.na.pedagogia.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "turma")
@Getter
@Setter
@NoArgsConstructor
public class Turma extends BaseModel {

	private static final long serialVersionUID = 1;
	
	@NotNull
	@Size(max = 100)
	private String nome;

	@OneToMany
	private List<Professor> professores;

	@OneToMany
	private List<Aluno> alunos;

	@OneToOne
	private Aluno representante;

	public Turma(Long id) {
		super(id);
	}
	
	
}
