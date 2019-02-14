package br.org.na.pedagogia.rest.auth;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.org.na.pedagogia.business.UsuarioBC;
import br.org.na.pedagogia.exception.NotFoundException;
import br.org.na.pedagogia.model.auth.Usuario;
import br.org.na.pedagogia.repository.auth.UsuarioRepository;


@RestController
@RequestMapping("/api/usuarios")
public class UsuarioRest {

	@Autowired
	private UsuarioRepository repository;
	
	@Autowired
	private UsuarioBC usuarioBC;
	
	@PostMapping
	@Secured("ROLE_ADMIN")
	public Long save(@Valid @RequestBody Usuario usuario) {
		return usuarioBC.save(usuario);
	}
	
	@PostMapping("/signon")
	public Long solicitarAcesso(@Valid @RequestBody Usuario usuario) {
		return usuarioBC.solcitarAcesso(usuario);
	}
	
	@PostMapping("/signon-confirm")
	@Secured("ROLE_ADMIN")
	public void confirmarAcesso(@Valid @RequestBody Usuario user) {
		Usuario usuario = repository.findById(user.getId())
			.orElseThrow(() -> new NotFoundException());
		
		usuario.setEnabled(true);
		usuario.setPerfils(user.getPerfils());
		usuarioBC.save(usuario);
	}	
	
	@PostMapping("/{id}/senha")
	public void mudarSenha(@PathVariable Long id, @RequestBody String senha) {
		Usuario usuario = repository.findById(id)
			.orElseThrow(() -> new NotFoundException());
		
		if (senha == null || senha.matches(" *")) {
			usuario.setSenha(null);
		} else {
			usuario.setSenha(new BCryptPasswordEncoder().encode(senha));
		}
		repository.save(usuario);
	}	
	
	@GetMapping
	@Secured("ROLE_ADMIN")
	public List<Usuario> findAll() {
		return repository.findAll();
	}

	@GetMapping("/{email}")
	public Usuario findByEmail(@PathVariable("email") String email) {
		Usuario usuario = repository.findByEmail(email);
		if (usuario == null) {
			throw new NotFoundException();
		}
		return usuario;
	}

}
