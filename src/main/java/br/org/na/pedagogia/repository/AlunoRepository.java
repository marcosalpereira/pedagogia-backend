package br.org.na.pedagogia.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.org.na.pedagogia.model.Aluno;

@Repository
public interface AlunoRepository extends JpaRepository<Aluno, Long> {
	
//	@Override
//	@RestResource(exported = false)
//    void delete(Aluno entity);

}