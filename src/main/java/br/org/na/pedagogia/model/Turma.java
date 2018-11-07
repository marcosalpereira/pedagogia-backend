package br.org.na.pedagogia.model;

import java.time.DayOfWeek;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.JoinColumn;
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
	
	//TODO add Sede
	
	@NotNull
	@Size(max = 100)
	private String nome;

	@OneToMany
	@JoinColumn(name="turma_id")
	private List<Professor> professores;

	@OneToMany
	@JoinColumn(name="turma_id")
	private List<Aluno> alunos;

	@OneToOne
	private Aluno representante;
	
	@NotNull
	@Enumerated(EnumType.ORDINAL)
	private DayOfWeek diaSemana;

	public Turma(Long id) {
		super(id);
	}
	
	public Turma(DayOfWeek diaSemana) {
		this.diaSemana = diaSemana;
	}
	
	
}
