package br.org.na.pedagogia.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "entrega_tema")
@Getter
@Setter
public class EntregaTema extends BaseModel {
	private static final long serialVersionUID = 1L;
	
	@ManyToOne(fetch = FetchType.LAZY)
    private Turma turma;
	
	@ManyToOne(optional = false)
	private Aluno aluno;
	
	@Column
	private boolean entregue;
	
	@Column
    private Date data;

}
