package br.org.na.pedagogia.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;


@Repository
public class UserDetailsServiceImpl implements UserDetailsService{

	@Autowired
	private UsuarioRepository ur;

	@Override
	public UserDetails loadUserByUsername(String nome) throws UsernameNotFoundException {
		Usuario usuario = ur.findByEmail(nome);

		if (usuario == null) {
			throw new UsernameNotFoundException("Usuário não encontrado!");
		}
		return usuario;
	}


}
