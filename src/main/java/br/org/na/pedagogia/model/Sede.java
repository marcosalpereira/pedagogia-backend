package br.org.na.pedagogia.model;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "sede")
@Getter
@Setter
public class Sede extends BaseModel {
	private static final long serialVersionUID = 1L;

	@Size(max = 100)
	private String nome;


}
