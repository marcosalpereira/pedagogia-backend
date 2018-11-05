package br.org.na.pedagogia.rest;

import java.util.List;
import java.util.stream.Collectors;

import javax.validation.Valid;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import br.org.na.pedagogia.dto.AlunoDTO;
import br.org.na.pedagogia.model.Aluno;
import br.org.na.pedagogia.repository.AlunoRepository;


@RestController
@RequestMapping("/alunos")
public class AlunoController {

	@Autowired
	private AlunoRepository repository;
	
	@PostMapping
	public Long save(@RequestBody @Valid Aluno aluno) {
		Aluno entity = repository.save(aluno);
		return entity.getId();
	}
	
	@GetMapping
	public List<AlunoDTO> findAll() {
		return repository.findAll().stream()
		          .map(post -> convertToDto(post))
		          .collect(Collectors.toList());
	}
	
	@GetMapping("/{id}")
	public AlunoDTO findById(@PathVariable("id") Long id) {//, HttpServletResponse response) {
		return repository.findById(id)
			.map(aluno -> convertToDto(aluno))
			.orElseThrow( () -> new ResponseStatusException(HttpStatus.NOT_FOUND) );	             	
	}
	
	private AlunoDTO convertToDto(Aluno aluno) {
	    AlunoDTO dto = new ModelMapper().map(aluno, AlunoDTO.class);
	    return dto;
	}	
	
}
