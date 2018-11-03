package br.org.na.pedagogia.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;

import br.org.na.pedagogia.model.Aluno;

@RepositoryRestResource(collectionResourceRel = "alunos", path = "alunos")
public interface AlunoRepository extends CrudRepository<Aluno, Long> {
	
	@Override
	@RestResource(exported = false)
    void delete(Aluno entity);

}