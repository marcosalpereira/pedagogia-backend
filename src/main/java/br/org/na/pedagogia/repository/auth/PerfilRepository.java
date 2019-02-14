package br.org.na.pedagogia.repository.auth;

import org.springframework.data.jpa.repository.JpaRepository;

import br.org.na.pedagogia.model.auth.Perfil;

public interface PerfilRepository extends JpaRepository<Perfil, Long>{
}
