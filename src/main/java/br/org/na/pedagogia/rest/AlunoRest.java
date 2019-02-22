package br.org.na.pedagogia.rest;

import java.io.IOException;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileUrlResource;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.org.na.pedagogia.exception.NotFoundException;
import br.org.na.pedagogia.model.Aluno;
import br.org.na.pedagogia.repository.AlunoRepository;


@RestController
@RequestMapping("/api/alunos")
public class AlunoRest {

	@Autowired
	private AlunoRepository repository;

	@PostMapping
	public Long save(@RequestBody @Valid Aluno aluno) {
		Aluno entity = repository.save(aluno);
		return entity.getId();
	}

	@GetMapping
	public List<Aluno> findAll() {
		return repository.findAll();
	}

	@GetMapping("/{id}")
	public ResponseEntity<Aluno> findById(@PathVariable("id") Long id) {
		return ResponseEntity.of(repository.findById(id));
	}
		
	@GetMapping("/{matricula}/foto")
	public ResponseEntity<InputStreamResource> getFoto(@PathVariable("matricula") Integer matricula) {
		try {
			String location = "/home/marcos/tmp/fotos/" + matricula + ".jpg";
			location = "/home/54706424372/Documentos/Imagens/me-ajuste-cor.jpg";
			FileUrlResource imgFile = new FileUrlResource(location);
			return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG)
					.body(new InputStreamResource(imgFile.getInputStream()));
		} catch (IOException e) {
			throw new NotFoundException();
		}
	}

}
