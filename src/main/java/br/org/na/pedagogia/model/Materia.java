package br.org.na.pedagogia.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;

@Entity
@Table(name = "materia")
public class Materia extends BaseModel {
	private static final long serialVersionUID = 1L;

	@NotNull
	@Length(max = 100)
	private String nome;

	@OneToMany(mappedBy = "materia")
	private List<Tema> temas;

}
