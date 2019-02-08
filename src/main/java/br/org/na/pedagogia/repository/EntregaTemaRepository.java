package br.org.na.pedagogia.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.org.na.pedagogia.model.EntregaTema;
import br.org.na.pedagogia.model.Turma;

@Repository
public interface EntregaTemaRepository extends JpaRepository<EntregaTema, Long> {
	List<EntregaTema> findByTurma(Turma turma);
	Optional<EntregaTema> findLastTemaEntregue(long idTurma, long idMateria);	
}