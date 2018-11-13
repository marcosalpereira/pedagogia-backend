package br.org.na.pedagogia.rest;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Order;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import br.org.na.pedagogia.model.BaseModel;
import br.org.na.pedagogia.model.EntregaTema;
import br.org.na.pedagogia.repository.EntregaTemaRepository;


@RestController
@RequestMapping("/entregas-tema")
public class EntregaTemaController {

	@Autowired
	private EntregaTemaRepository repository;

	@GetMapping
	public List<EntregaTema> findAll(
			@RequestParam("idTurma") long idTurma,
			@RequestParam("idTema") long idTema
			) {
		Example<EntregaTema> ex = Example.of(new EntregaTema(idTurma, idTema), BaseModel.MATCHER);
		List<EntregaTema> entregasBD = repository.findAll(ex, Sort.by(Order.asc("aluno.nome")));
		EntregaTema.prepararDeserializacao(ex.getProbe(), entregasBD);
		return entregasBD;
	}
	
	@PostMapping
	public List<EntregaTema> registrarEntrega(@RequestBody @Valid List<EntregaTema> entregas) {
		List<EntregaTema> entregasBD = repository.saveAll(entregas);
		EntregaTema.prepararDeserializacao(entregas.get(0), entregasBD);
		return entregasBD;
	}
	
}
