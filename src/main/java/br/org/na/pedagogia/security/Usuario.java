package br.org.na.pedagogia.security;


import java.util.Collection;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import br.org.na.pedagogia.model.BaseModel;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "usuario")
@Getter @Setter
public class Usuario extends BaseModel implements UserDetails{
	private static final long serialVersionUID = 1L;

	@Column
	private String nome;

	@Column
	private String senha;

	@ManyToMany(fetch=FetchType.EAGER)
	private Set<Perfil> perfils;

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return this.perfils;
	}

	@Override
	public String getPassword() {
		return senha;
	}

	@Override
	public String getUsername() {
		return nome;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

}
