package br.org.na.pedagogia.security;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UsuarioRepository extends JpaRepository<Usuario, String>{
	Usuario findByEmail(String nome);
}
