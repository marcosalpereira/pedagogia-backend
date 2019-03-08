package br.org.na.pedagogia.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.data.domain.Example;

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

	public static Example<EntregaTema> example(long idTurma, long idTema) {
		Turma turma = new Turma(idTurma);
		turma.setVersion(null);
		
		Tema tema = new Tema(idTema);
		tema.setVersion(null);

		EntregaTema entrega = new EntregaTema();
		entrega.setVersion(null);		
		entrega.setTurma(turma);
		entrega.setTema(tema);
		
		return Example.of(entrega);
	}

}
