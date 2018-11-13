package br.org.na.pedagogia.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "aula")
@Getter
@Setter
@NoArgsConstructor
@JsonIgnoreProperties(value = { "professor", "materia", "turma", "capitulo" }, allowSetters = true)
public class Aula extends BaseModel {
	private static final long serialVersionUID = 1L;

	@NotNull
	@Column
	@Temporal(TemporalType.DATE)
	private Date data;

	@NotNull
	@ManyToOne
	private Turma turma;
	
	@NotNull
	@ManyToOne
	private Materia materia;

//	@NotNull
//	@ManyToOne
//	private Professor professor;

	@NotNull
	@OneToMany(mappedBy = "aula", cascade = CascadeType.ALL)
	private List<Presenca> presencas;

	@NotNull
	@ManyToOne
	private Capitulo capitulo;

	@Size(max = 300)
	private String observacao;

	public Aula(long idTurma, long materia, Date data) {
		assert data != null;

		this.turma = new Turma(idTurma);
		this.materia = new Materia(materia);
		this.data = data;
	}

}
