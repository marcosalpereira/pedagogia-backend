package br.org.na.pedagogia.business;

import java.util.List;
import java.util.function.Function;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;

import br.org.na.pedagogia.exception.NotFoundException;
import br.org.na.pedagogia.model.Turma;
import br.org.na.pedagogia.repository.TurmaRepository;

@Service
public class TurmaBC {
	
	@Autowired
	private TurmaRepository repository;	

	@Transactional
	public <T> List<T> findById(long id, Function<Turma, List<T>> mapper) {
		return repository.findById(id)
				.map(t -> initializeList(mapper.apply(t)))
				.orElseThrow(() -> new NotFoundException());
	}

	/**
	 * Inicializa a lista para evitar erros de Lazy Loading.
	 */
	private <T> List<T> initializeList(List<T> list) {
		list.iterator();
		return list;
	}
	
	@Transactional
	public <T> List<T> findOne(Example<Turma> ex, Function<Turma, List<T>> mapper) {
		return repository.findOne(ex)
				.map(t -> initializeList(mapper.apply(t)))
				.orElseThrow(() -> new NotFoundException());
	}
	
}