package br.org.na.pedagogia.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "aula")
@Getter
@Setter
@NoArgsConstructor
public class Aula extends BaseModel {
	private static final long serialVersionUID = 1L;
	
	@NotNull
	@Column
	@Temporal(TemporalType.DATE)
	private Date data;
	
	@NotNull
	@ManyToOne
	private Professor professor;
	
	@NotNull
	@OneToMany(mappedBy = "aula")
	@Cascade(CascadeType.ALL)
	private List<Presenca> presencas;
	
	@NotNull
	@ManyToOne
	private Materia materia;
	
	@NotNull
	@ManyToOne
	private Capitulo capitulo;
	
	@Size(max = 300)
	private String observacao;
	
	public Aula(Long materia, Long professor, Date data) {
		this.materia = new Materia(materia);
		this.professor = new Professor(professor);
		this.data = data;
	}

	
}
