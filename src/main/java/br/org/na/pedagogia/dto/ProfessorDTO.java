package br.org.na.pedagogia.dto;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import br.org.na.pedagogia.model.BaseModel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "professor")
@Getter
@Setter
@NoArgsConstructor
public class ProfessorDTO extends BaseModel {
	private static final long serialVersionUID = 1L;

	@Size(max = 100)
	private String nome;

	public ProfessorDTO(Long id) {
		super(id);
	}
	

}
