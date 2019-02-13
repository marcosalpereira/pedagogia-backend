package br.org.na.pedagogia.security;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UsuarioRepository extends JpaRepository<Usuario, Long>{
	Usuario findByEmail(String nome);
}
