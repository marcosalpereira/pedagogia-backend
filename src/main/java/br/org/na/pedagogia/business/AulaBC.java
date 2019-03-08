package br.org.na.pedagogia.business;

import java.util.ArrayList;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.org.na.pedagogia.model.Aula;
import br.org.na.pedagogia.model.Presenca;
import br.org.na.pedagogia.repository.AlunoRepository;
import br.org.na.pedagogia.repository.AulaRepository;
import br.org.na.pedagogia.repository.CapituloRepository;
import br.org.na.pedagogia.repository.MateriaRepository;
import br.org.na.pedagogia.repository.TurmaRepository;

@Service
public class AulaBC {
	
	@Autowired
	private AulaRepository aulaRepository;
	
	@Autowired
	private CapituloRepository capituloRepository;

	@Autowired
	private MateriaRepository materiaRepository;
	
	@Autowired
	private AlunoRepository alunoRepository;
	
	@Autowired
	private TurmaRepository turmaRepository;

	@Transactional
	public Aula registrarAula(Aula aula) {
		final Aula e;
		if (aula.getId() != null) {
			e = aulaRepository.findById(aula.getId()).get();
			e.getPresencas().clear();
		} else {
			e = new Aula();
			e.setPresencas(new ArrayList<>());
			e.setData(aula.getData());
			e.setObservacao(aula.getObservacao());
			e.setTurma(turmaRepository.findById(aula.getTurma().getId()).get());
			e.setMateria(materiaRepository.findById(aula.getMateria().getId()).get());
		}
		aula.getPresencas().forEach(p -> {
			Presenca pp = new Presenca();
			e.getPresencas().add(pp);
			pp.setAula(e);
			pp.setAluno(alunoRepository.findById(p.getAluno().getId()).get());
			pp.setPresente(p.getPresente());
		});
		if (aula.getCapitulo() != null) {
			e.setCapitulo(capituloRepository.findById(aula.getCapitulo().getId()).get());
		} else {
			e.setCapitulo(null);
		}
		
		Aula entity = aulaRepository.save(e);
		return entity;
	}

}