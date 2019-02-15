package br.org.na.pedagogia.model.auth;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import br.org.na.pedagogia.model.BaseModel;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "perfil")
@Getter
@Setter
@JsonIgnoreProperties(value = { "authority" } )
public class Perfil extends BaseModel implements GrantedAuthority {
	private static final long serialVersionUID = 1L;
	@Column
	private String nome;

	@Override
	public String getAuthority() {
		return this.nome;
	}
}
