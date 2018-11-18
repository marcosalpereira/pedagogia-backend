package br.org.na.pedagogia.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.org.na.pedagogia.exception.NotFoundException;


@RestController
@RequestMapping("/usuarios")
public class UsuarioController {

	@Autowired
	private UsuarioRepository repository;

	@GetMapping("/{email}")
	public Usuario findById(@PathVariable("email") String email) {
		Usuario usuario = repository.findByEmail(email);
		if (usuario == null) {
			throw new NotFoundException();
		}
		usuario.setSenha(null);
		return usuario;
	}

}