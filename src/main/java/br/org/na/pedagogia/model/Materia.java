package br.org.na.pedagogia.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Length;

@Entity
@Table(name = "materia")
@SuppressWarnings("unused")
public class Materia extends BaseModel {
	private static final long serialVersionUID = 1L;

	@Length(max = 100)
	private String nome;

	@OneToMany
	private List<Tema> temas;

}
