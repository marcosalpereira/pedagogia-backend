package br.org.na.pedagogia.model;

import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "materia", uniqueConstraints = @UniqueConstraint(columnNames = "nome"))
@Getter @Setter @NoArgsConstructor
public class Materia extends BaseModel {
	private static final long serialVersionUID = 1L;

	@ManyToOne(fetch = FetchType.LAZY)
	@JsonBackReference
	private Nivel nivel;

	@NotBlank
	@Size(max = 100)
	private String nome;

	@JsonDeserialize(as = LinkedHashSet.class)
	@JsonManagedReference
	@OneToMany(mappedBy = "materia", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@OrderBy("numero")
	private Set<Tema> temas;

	public Materia(long id) {
		super(id);
	}

}
