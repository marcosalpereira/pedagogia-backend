package br.org.na.pedagogia.business;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.org.na.pedagogia.model.Aula;
import br.org.na.pedagogia.repository.AlunoRepository;
import br.org.na.pedagogia.repository.AulaRepository;
import br.org.na.pedagogia.repository.CapituloRepository;
import br.org.na.pedagogia.repository.MateriaRepository;

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

	@Transactional
	public Aula registrarAula(Aula aula) {
		aula.getPresencas().forEach(p -> {
			p.setAula(aula);
			p.setAluno(alunoRepository.findById(p.getAluno().getId()).get());
		});
		if (aula.getCapitulo() != null) {
			aula.setCapitulo(capituloRepository.getOne(aula.getCapitulo().getId()));
		}
		aula.setMateria(materiaRepository.getOne(aula.getMateria().getId()));
		//TODO pq ao salvar a aulla ocorre um monte de select na tabela capitulo
		Aula entity = aulaRepository.save(aula);
		return entity;
	}

}