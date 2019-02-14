package br.org.na.pedagogia.repository.auth;

import org.springframework.data.jpa.repository.JpaRepository;

import br.org.na.pedagogia.model.auth.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Long>{
	Usuario findByEmail(String nome);
}
