package br.org.na.pedagogia.security;


import java.util.Collection;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import br.org.na.pedagogia.model.BaseModel;
import br.org.na.pedagogia.model.Sede;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "usuario")
@Getter @Setter
@JsonIgnoreProperties(value = { "senha", "password" }, allowSetters = true)
public class Usuario extends BaseModel implements UserDetails {
	private static final long serialVersionUID = 1L;

	@Column
	@Email
	private String email;

	@Column
	@NotNull
	private String nome;

	@Column
	private String senha;

	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	private Sede sede;

	@ManyToMany(fetch=FetchType.EAGER, cascade = CascadeType.ALL)
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
		return email;
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
