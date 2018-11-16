package br.org.na.pedagogia.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

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
	@Min(value = 1)
	@Column
	private Integer numero;
	
	@JsonManagedReference
	@OneToMany(mappedBy = "nivel", fetch = FetchType.EAGER)
	private List<Materia> materias;
}
