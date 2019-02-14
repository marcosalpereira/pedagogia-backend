package br.org.na.pedagogia.model.auth;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;

import br.org.na.pedagogia.model.BaseModel;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "perfil")
@Getter
@Setter
public class Perfil extends BaseModel implements GrantedAuthority {
	private static final long serialVersionUID = 1L;
	@Column
	private String nome;

	@Override
	public String getAuthority() {
		return this.nome;
	}
}
