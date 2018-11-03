package br.org.na.pedagogia.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Length;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "tema")
@Getter
@Setter
public class Tema extends BaseModel {

	private static final long serialVersionUID = 1;
	
	@ManyToOne
	private Materia materia;

	@Column
	private Integer numero;

	@Length(max = 100)
	private String nome;

	@OneToMany(mappedBy = "tema")
	private List<Capitulo> capitulos;

}
