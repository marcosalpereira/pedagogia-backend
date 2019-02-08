package br.org.na.pedagogia.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "materia_turma")
@Getter
@Setter
@NoArgsConstructor
@ToString
public class MateriaTurma extends BaseModel {
	private static final long serialVersionUID = 1L;

	@JsonBackReference	
	@ManyToOne(fetch = FetchType.LAZY)
	private Turma turma;

	@ManyToOne(optional = false, fetch = FetchType.EAGER)
	private Materia materia;

	@ManyToOne(optional = false, fetch = FetchType.EAGER)
	private Professor professor;

}
