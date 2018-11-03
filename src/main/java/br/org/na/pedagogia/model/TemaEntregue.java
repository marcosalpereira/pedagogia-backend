package br.org.na.pedagogia.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "tema_entregue")
@Getter
@Setter
public class TemaEntregue extends BaseModel {
	private static final long serialVersionUID = 1L;

	@ManyToOne
    private Turma turma;
	
	@ManyToOne
    private Tema tema;
	
	@OneToMany
    private List<Entrega> entregas;

}
