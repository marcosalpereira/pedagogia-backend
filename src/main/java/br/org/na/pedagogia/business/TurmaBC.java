package br.org.na.pedagogia.business;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;

import br.org.na.pedagogia.model.Turma;
import br.org.na.pedagogia.repository.TurmaRepository;

@Service
public class TurmaBC {
	
	@Autowired
	private TurmaRepository repository;	
	
	@Transactional
	public <T> List<T> findAll(Example<Turma> ex, Class<T> dto) {
		return repository.findAll(ex).stream()
				.map(t -> t.toDTO(dto))
				.collect(Collectors.toList());
	}
	
	@Transactional
	public <T> Optional<T> findOne(Example<Turma> ex, Class<T> dto) {
		return repository.findOne(ex)
				.map(t -> Optional.of(t.toDTO(dto)))
				.orElse(Optional.empty());
	}

	
}