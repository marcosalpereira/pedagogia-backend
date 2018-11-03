DROP SCHEMA public cascade;

CREATE SCHEMA public
  AUTHORIZATION na;

insert into sede (id, nome) values (1, 'Fortaleza')  

select * from aluno
insert into aluno (id,nome,sede_id) values 
(1, 'ivo', 1),
(2, 'rui', 1),
(3, 'eva', 1),
(4, 'oto', 1),
(5, 'oma', 1),

insert into materia (id,nome) values 
(1,'Introdução a Sabedoria do Oriente'),
(2, 'Psicologia')

insert into tema (id, nome, numero, materia_id) values
(nextval('hibernate_sequence'), 'Tema I', 1,1),
(nextval('hibernate_sequence'), 'Tema II', 2,1),
(nextval('hibernate_sequence'), 'Tema III', 3,1),
(nextval('hibernate_sequence'), 'Tema IV', 4,1);

insert into capitulo (id, nome, numero, tema_id) values
(nextval('hibernate_sequence'), 'Introdução', 1,1),
(nextval('hibernate_sequence'), 'O Enigma de Deus', 2,1),

(nextval('hibernate_sequence'), 'Sistema Solar', 1,2),
(nextval('hibernate_sequence'), 'Triplo Logos Solar', 2,2);

insert into professor (id, nome) values 
(nextval('hibernate_sequence'), 'Levi'),
(nextval('hibernate_sequence'), 'Plicia'),
(nextval('hibernate_sequence'), 'Aline');

insert into turma (id, nome) values 
(nextval('hibernate_sequence'), 'N2 Quarta Seneca'),
(nextval('hibernate_sequence'), 'N2 Quarta Socrates');

insert into turma_alunos (turma_id, alunos_id) values 
(12,1),(12,2),(12,3),(12,4),(12,5);

insert into turma_professores (turma_id, professores_id) values 
(12,9),(12,10),(12,11);

