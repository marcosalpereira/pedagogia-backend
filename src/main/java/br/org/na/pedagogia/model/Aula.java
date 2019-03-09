package br.org.na.pedagogia.model;

import java.util.Collections;
import java.util.Comparator;
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

import org.springframework.data.domain.Example;
import org.springframework.util.Assert;

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

	@NotNull
	@ManyToOne(fetch = FetchType.LAZY)
	private Materia materia;

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "aula", cascade = CascadeType.ALL, orphanRemoval=true)
	private List<Presenca> presencas;

	@ManyToOne(fetch = FetchType.LAZY)
	private Capitulo capitulo;

	@Size(max = 300)
	private String observacao;


	public static Example<Aula> example(long idTurma, long idMateria, @NotNull Date data) {
		Assert.notNull(data, "Data não pode ser nula");

		Turma turma = new Turma(idTurma);
		turma.setVersion(null);
		
		Materia materia = new Materia(idMateria);
		materia.setVersion(null);
		
		Aula aula = new Aula();
		aula.setVersion(null);
		aula.setTurma(turma);
		aula.setMateria(materia);
		aula.setData(data);
		
		return Example.of(aula);
	}


	public void sortPresencasPorNomeAluno() {
		Collections.sort(presencas, new Comparator<Presenca>() {
			public int compare(Presenca o1, Presenca o2) {
				return o1.getNomeAluno().compareTo(o2.getNomeAluno());
			}
		});
	}

}
