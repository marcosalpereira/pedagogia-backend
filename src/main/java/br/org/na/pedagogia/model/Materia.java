package br.org.na.pedagogia.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "materia")
@Getter @Setter @NoArgsConstructor
public class Materia extends BaseModel {
	private static final long serialVersionUID = 1L;
	
	@ManyToOne
	@JsonBackReference
	private Nivel nivel;	
	
	@NotBlank
	@Size(max = 100)
	private String nome;	

	@JsonManagedReference
	@OneToMany(mappedBy = "materia", fetch = FetchType.EAGER)
	private List<Tema> temas;

	public Materia(long id) {
		super(id);
	}
	
}
