package br.org.na.pedagogia.repository.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import br.org.na.pedagogia.model.auth.Usuario;


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
