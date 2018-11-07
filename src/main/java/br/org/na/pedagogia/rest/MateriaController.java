package br.org.na.pedagogia.rest;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.org.na.pedagogia.dto.MateriaDTO;
import br.org.na.pedagogia.repository.MateriaRepository;


@RestController
@RequestMapping("/materias")
public class MateriaController {

	@Autowired
	private MateriaRepository repository;
	
	@GetMapping(produces="application/json")
	public List<MateriaDTO> findAll() {
		return repository.findAll().stream()
          .map(entity -> entity.toDTO(MateriaDTO.class))
          .collect(Collectors.toList());
	}
	
	
}
