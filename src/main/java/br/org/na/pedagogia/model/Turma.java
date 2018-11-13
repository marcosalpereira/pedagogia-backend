package br.org.na.pedagogia.model;

import java.time.DayOfWeek;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "turma")
@Getter
@Setter
@NoArgsConstructor
// @JsonIgnoreProperties(value = {"sede", "professores"}, allowSetters=true)
public class Turma extends BaseModel {

	private static final long serialVersionUID = 1;
	
	@Fetch(FetchMode.SELECT)
	@ManyToOne(fetch=FetchType.LAZY, optional = false)
	private Sede sede;
	
	@NotNull
	@Size(max = 100)
	private String nome;

	@ManyToMany
	@Fetch(FetchMode.SELECT)
	private List<Materia> materias;

	@ManyToMany
	@Fetch(FetchMode.SELECT)	
	private List<Aluno> alunos;

	@OneToOne
	private Aluno representante;
	
	@NotNull
	@Enumerated(EnumType.ORDINAL)
	private DayOfWeek diaSemana;

	public Turma(long id) {
		super(id);
	}
	
	public Turma(long idSede, DayOfWeek diaSemana) {
		this.sede = new Sede(idSede);
		this.diaSemana = diaSemana;
	}
	
}
