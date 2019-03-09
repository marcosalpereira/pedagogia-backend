package br.org.na.pedagogia.business;

import java.util.ArrayList;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import br.org.na.pedagogia.model.Aula;
import br.org.na.pedagogia.model.BaseModel;
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
	public Aula registrarAula(Aula pAula) {
		final Aula aula;
		if (pAula.getId() != null) {
			aula = findById(aulaRepository, pAula);
			aula.sortPresencasPorNomeAluno();
			
			aula.getPresencas().forEach(presenca -> {
				Presenca pPresenca = pAula.getPresencas().stream()
					.filter(p -> p.getId().equals(presenca.getId()))
					.findFirst().get();
				presenca.setPresente(pPresenca.getPresente());
			});
			
		} else {
			aula = new Aula();
			aula.setPresencas(new ArrayList<>());
			aula.setData(pAula.getData());
			aula.setTurma(findById(turmaRepository, pAula.getTurma()));
			aula.setMateria(findById(materiaRepository, pAula.getMateria()));
			
			pAula.getPresencas().forEach(pPresenca -> {
				Presenca presenca = new Presenca();
				aula.getPresencas().add(presenca);
				presenca.setAula(aula);
				presenca.setAluno(findById(alunoRepository, pPresenca.getAluno()));
				presenca.setPresente(pPresenca.getPresente());
			});
			
		}
		if (pAula.getCapitulo() != null) {
			aula.setCapitulo(findById(capituloRepository, pAula.getCapitulo()));
		} else {
			aula.setCapitulo(null);
		}
		aula.setObservacao(pAula.getObservacao());
		
		return aulaRepository.save(aula);
	}
	
	private <T extends BaseModel> T findById(JpaRepository<T, Long> repo, T entity) {
		return repo.findById(entity.getId()).get();
	}

}