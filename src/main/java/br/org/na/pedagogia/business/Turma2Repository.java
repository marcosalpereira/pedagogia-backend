package br.org.na.pedagogia.business;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import br.org.na.pedagogia.model.Turma;

@RepositoryRestResource(collectionResourceRel = "todos", path = "/turmas2")
public interface Turma2Repository
		extends PagingAndSortingRepository<Turma, Long> {
}
