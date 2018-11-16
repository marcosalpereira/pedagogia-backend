package br.org.na.pedagogia.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.org.na.pedagogia.model.Nivel;

@Repository
public interface NivelRepository extends JpaRepository<Nivel, Long> {
	List<Nivel> findByNumero(Integer numero);
}