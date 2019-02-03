package br.org.na.pedagogia.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonBackReference;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "capitulo")
@Getter
@Setter
public class Capitulo extends BaseModel {

	private static final long serialVersionUID = 1;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JsonBackReference
	private Tema tema;
	
	@NotNull
	@Column
	private Integer numero;
	
	@NotNull
	@Size(max = 100)
	private String nome;

}
