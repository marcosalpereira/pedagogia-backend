package br.org.na.pedagogia.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import br.org.na.pedagogia.model.EntregaTema;
import br.org.na.pedagogia.model.Tema;
import br.org.na.pedagogia.model.Turma;

@Repository
public interface EntregaTemaRepository extends JpaRepository<EntregaTema, Long> {
	List<EntregaTema> findByTurma(Turma turma);

	@Query("SELECT et.tema FROM EntregaTema et WHERE et.id = ("
			+ " SELECT max(etm.id) FROM EntregaTema etm"
			+ " INNER JOIN etm.turma tur"
			+ " INNER JOIN etm.tema tem"
			+ " INNER JOIN tem.materia mat"
			+ " where tur.id = ?1"
			+ " and mat.id = ?2"
			+ " and etm.data is not null"
			+ ")"
			)
	Optional<Tema> findLastTemaEntregue(long idTurma, long idMateria);	
}