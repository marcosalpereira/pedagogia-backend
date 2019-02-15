package br.org.na.pedagogia.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "nivel")
@Getter
@Setter
public class Nivel extends BaseModel {
	private static final long serialVersionUID = 1;
	@NotNull
	@Size(max = 10)
	private String codigo;

	@JsonManagedReference
	@OneToMany(mappedBy = "nivel", fetch = FetchType.LAZY)
	@OrderBy("nome")
	private Set<Materia> materias;
}
