package br.org.na.pedagogia.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.org.na.pedagogia.model.Turma;

@Repository
public interface TurmaRepository extends JpaRepository<Turma, Long> {
}