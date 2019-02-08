package br.org.na.pedagogia.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "entrega_tema")
@Getter
@Setter
@NoArgsConstructor
@ToString

@NamedQuery(
		name = "EntregaTema.findLastTemaEntregue",
		query = "SELECT et FROM EntregaTema et "
				+ "WHERE et.turma.id = ?1 "
				+ "and et.tema.materia.id = ?2"
				+ "order by data DESC")
public class EntregaTema extends BaseModel {
	private static final long serialVersionUID = 1L;

	@ManyToOne(fetch = FetchType.LAZY)
	private Turma turma;

	@ManyToOne(optional = false, fetch = FetchType.LAZY)
	private Tema tema;

	@ManyToOne(optional = false, fetch = FetchType.EAGER)
	private Aluno aluno;

	@Column
	private Boolean entregue;

	@Column
	private Date data;

	public EntregaTema(long idTurma, long idTema) {
		turma = new Turma(idTurma);
		tema = new Tema(idTema);
	}

}
