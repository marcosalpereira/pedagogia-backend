package br.org.na.pedagogia.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.org.na.pedagogia.model.Capitulo;
import br.org.na.pedagogia.model.Materia;
import br.org.na.pedagogia.model.Tema;
import br.org.na.pedagogia.repository.MateriaRepository;


@RestController
@RequestMapping("/api/materias")
public class MateriaRest {

	@Autowired
	private MateriaRepository repository;

	@PostMapping
	public Long save(@RequestBody Materia materia) {
		checkDefaults(materia);
		Materia entity = repository.save(materia);
		return entity.getId();
	}	

	private void checkDefaults(Materia materia) {
		int numeroTema = 0;
		for (Tema tema : materia.getTemas()) {
			numeroTema++;
			if (tema.getNumero() == null) {
				tema.setNumero(numeroTema);
			}
			int numeroCapitulo = 0;
			for (Capitulo cap : tema.getCapitulos()) {
				numeroCapitulo++;
				if (cap.getNumero() == null) {
					cap.setNumero(numeroCapitulo);
				}
			}
		}
	}
	
	@GetMapping(produces="application/json")
	public List<Materia> findAll() {
		return repository.findAll();
	}
	
	
}
