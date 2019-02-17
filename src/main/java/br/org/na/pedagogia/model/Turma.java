package br.org.na.pedagogia.model;

import java.time.DayOfWeek;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "turma")
@Getter
@Setter
@NoArgsConstructor
@JsonIgnoreProperties(value = {"alunos", "professores", "materias"}, allowSetters=true)
public class Turma extends BaseModel {

	private static final long serialVersionUID = 1;
	
	@ManyToOne(optional = false, fetch = FetchType.EAGER)
	private Sede sede;
	
	@NotNull
	@Size(max = 100)
	private String nome;
	
	@Size(max = 50)
	private String sala;
	
	/**
	 * Codigo no mercurio
	 */
	@NotNull
	@Size(max = 15)
	private String codigo;

	@ManyToMany
	private List<Aluno> alunos;
	
	@JsonManagedReference
	@OneToMany(mappedBy = "turma", cascade = CascadeType.ALL)
	private Set<MateriaTurma> materias;

	@OneToOne(fetch=FetchType.EAGER)
	private Aluno representante;
	
	@NotNull
	@Column(length = 15)
	@Enumerated(EnumType.STRING)
	private DayOfWeek diaSemana;
	
	@ManyToOne(optional = false, fetch=FetchType.EAGER)
	private Nivel nivel;
	
	public Turma(long id) {
		super(id);
	}
	
	public Turma(Long idSede, DayOfWeek diaSemana) {
		this.sede = new Sede(idSede);
		this.diaSemana = diaSemana;
	}

	public List<Professor> getProfessores() {
		if (materias == null) return Collections.emptyList();
		return materias.stream().map(mt -> mt.getProfessor()).collect(Collectors.toList());
	}
	
	public List<Materia> getMaterias() {
		if (materias == null) return Collections.emptyList();
		return materias.stream().map(mt -> mt.getMateria()).collect(Collectors.toList());
	}
	
	
}
