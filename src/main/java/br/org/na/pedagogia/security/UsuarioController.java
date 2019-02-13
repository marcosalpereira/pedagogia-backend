package br.org.na.pedagogia.security;

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


@RestController
@RequestMapping("/api/usuarios")
public class UsuarioController {

	@Autowired
	private UsuarioRepository repository;
	
	@Autowired
	private UsuarioBC usuarioBC;

	
	@PostMapping
	@Secured("ROLE_ADMIN")
	public Long save(@Valid @RequestBody Usuario usuario) {
		return usuarioBC.save(usuario);
	}
	
	@PostMapping("/{id}/senha")
	public void mudarSenha(@PathVariable Long id, @RequestBody String senha) {
		Usuario usuario = repository.findById(id)
			.map(usr -> usr)
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
		List<Usuario> usuarios = repository.findAll();
		usuarios.forEach(u -> u.setSenha(null));
		return usuarios;
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
