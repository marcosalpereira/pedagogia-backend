package br.org.na.pedagogia.business;

import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import br.org.na.pedagogia.security.PerfilRepository;
import br.org.na.pedagogia.security.Usuario;
import br.org.na.pedagogia.security.UsuarioRepository;

@Service
public class UsuarioBC {
	
	@Autowired
	private UsuarioRepository repository;
	
	@Autowired
	private PerfilRepository perfilRepository;

	@Transactional
	public Long save(Usuario usuario) {
		if (usuario.getSenha() != null) {
			if (usuario.getSenha().matches(" *")) {
				usuario.setSenha(null);
			} else {
				usuario.setSenha(new BCryptPasswordEncoder().encode(usuario.getSenha()));
			}
		}
		usuario.setPerfils(
				usuario.getPerfils().stream()
					.map(perfil -> perfilRepository.findById(perfil.getId()).get())
					.collect(Collectors.toSet())
		);
		Usuario entity = repository.save(usuario);
		return entity.getId();
	}
	
}