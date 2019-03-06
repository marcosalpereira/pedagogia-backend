package br.org.na.pedagogia.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "aula")
@Getter
@Setter
@NoArgsConstructor
//@JsonIgnoreProperties(value = { "materia", "turma" }, allowSetters = true)
public class Aula extends BaseModel {
	private static final long serialVersionUID = 1L;

	@NotNull
	@Column
	@Temporal(TemporalType.DATE)
	private Date data;

	@NotNull
	@ManyToOne
	private Turma turma;
	
	@ManyToOne(fetch = FetchType.LAZY)
	private Materia materia;

	@NotNull
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "aula", cascade = CascadeType.ALL)
	private List<Presenca> presencas;

	@NotNull
	@ManyToOne(fetch = FetchType.LAZY)
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
