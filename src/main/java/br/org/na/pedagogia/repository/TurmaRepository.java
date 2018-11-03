package br.org.na.pedagogia.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import br.org.na.pedagogia.model.Turma;

@RepositoryRestResource(collectionResourceRel = "turmas", path = "turmas")
public interface TurmaRepository extends CrudRepository<Turma, Long> {
	
}