package br.org.na.pedagogia.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "materia")
@Getter @Setter @NoArgsConstructor
public class Materia extends BaseModel {
	private static final long serialVersionUID = 1L;
	
	@NotBlank
	@Size(max = 100)
	private String nome;

	@OneToMany(mappedBy = "materia")
	private List<Tema> temas;

	public Materia(Long id) {
		super(id);
	}
	
}
