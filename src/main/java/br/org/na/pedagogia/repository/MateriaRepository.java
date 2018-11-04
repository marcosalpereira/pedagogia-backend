package br.org.na.pedagogia.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.org.na.pedagogia.model.Materia;

@Repository
public interface MateriaRepository extends JpaRepository<Materia, Long> {
}