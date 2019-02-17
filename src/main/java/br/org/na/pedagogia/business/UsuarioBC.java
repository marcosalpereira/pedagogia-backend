package br.org.na.pedagogia.business;

import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import br.org.na.pedagogia.exception.AlreadyExistsException;
import br.org.na.pedagogia.model.auth.Usuario;
import br.org.na.pedagogia.repository.auth.PerfilRepository;
import br.org.na.pedagogia.repository.auth.UsuarioRepository;

@Service
public class UsuarioBC {
	
	@Autowired
	private UsuarioRepository repository;
	
	@Autowired
	private PerfilRepository perfilRepository;

	@Transactional
	public Long habilitar(Usuario usuario) {
		usuario.setEnabled(true);

		usuario.setPerfils(
				usuario.getPerfils().stream()
					.map(perfil -> perfilRepository.findById(perfil.getId()).get())
					.collect(Collectors.toSet())
		);
		Usuario entity = repository.save(usuario);
		return entity.getId();
	}

	public Long solicitarAcesso(Usuario usuario) {
		if (repository.findByEmail(usuario.getEmail()) != null) {
			throw new AlreadyExistsException("Já existe Solicitação!");
		}
		
		usuario.setEnabled(false);
		usuario.setPerfils(null);
		usuario.setSenha(new BCryptPasswordEncoder().encode(usuario.getSenha()));
		
		Usuario entity = repository.save(usuario);
		return entity.getId();
	}
	
}