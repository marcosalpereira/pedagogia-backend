package br.org.na.pedagogia.model;

import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "tema")
@Getter
@Setter
@NoArgsConstructor
public class Tema extends BaseModel {

	private static final long serialVersionUID = 1;

	@JsonBackReference
	@ManyToOne(fetch = FetchType.LAZY)
	private Materia materia;

	@NotNull
	@Column
	private Integer numero;

	@Size(max = 300)
	private String nome;

	@JsonDeserialize(as = LinkedHashSet.class)
	@OneToMany(mappedBy = "tema", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JsonManagedReference
	@OrderBy("numero")
	private Set<Capitulo> capitulos;

	public Tema(long id) {
		super(id);
	}


}
