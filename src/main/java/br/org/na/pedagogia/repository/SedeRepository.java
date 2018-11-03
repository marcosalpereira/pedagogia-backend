package br.org.na.pedagogia.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;

import br.org.na.pedagogia.model.Sede;

@RepositoryRestResource(collectionResourceRel = "sedes", path = "sedes")
public interface SedeRepository extends CrudRepository<Sede, Long> {
	
	@Override
	@RestResource(exported = false)
    void delete(Sede entity);

}