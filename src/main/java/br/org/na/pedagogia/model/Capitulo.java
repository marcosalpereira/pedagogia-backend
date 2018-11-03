package br.org.na.pedagogia.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Length;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "capitulo")
@Getter
@Setter
public class Capitulo extends BaseModel {

	private static final long serialVersionUID = 1;
	
	@Column
	private Integer numero;
	
	@Length(max = 100)
	private String nome;

}
