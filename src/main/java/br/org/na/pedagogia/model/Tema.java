package br.org.na.pedagogia.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "tema")
@Getter
@Setter
@NoArgsConstructor
@JsonIgnoreProperties(value = {"materia"}, allowSetters=true)
public class Tema extends BaseModel {

	private static final long serialVersionUID = 1;

	@ManyToOne
	private Materia materia;

	@Column
	private Integer numero;

	@Size(max = 100)
	private String nome;

	@OneToMany(mappedBy = "tema", fetch = FetchType.EAGER)
	@JsonManagedReference
	private List<Capitulo> capitulos;

	public Tema(long id) {
		super(id);
	}

	
}
