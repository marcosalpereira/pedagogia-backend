package br.org.na.pedagogia.business;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;

import br.org.na.pedagogia.model.Aula;
import br.org.na.pedagogia.repository.AulaRepository;

@Service
public class AulaBC {
	
	@Autowired
	private AulaRepository repository;	
	
	@Transactional
	public <T> List<T> findAll(Example<Aula> ex, Class<T> dto) {
		return repository.findAll(ex).stream()
				.map(t -> t.toDTO(dto))
				.collect(Collectors.toList());
	}
	
	@Transactional
	public <T> Optional<T> findOne(Example<Aula> ex, Class<T> dto) {
		return repository.findOne(ex)
				.map(t -> Optional.of(t.toDTO(dto)))
				.orElse(Optional.empty());
	}

	
}