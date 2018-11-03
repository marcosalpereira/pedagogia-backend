package br.org.na.pedagogia.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "entrega")
@Getter
@Setter
public class Entrega extends BaseModel {
	private static final long serialVersionUID = 1L;

	@Column
    private boolean entregue;
	
	@ManyToOne
    private Aluno aluno;
	
	@Column
    private Date data;

}
