package br.org.na.pedagogia.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.org.na.pedagogia.model.Capitulo;

@Repository
public interface CapituloRepository extends JpaRepository<Capitulo, Long> {
}