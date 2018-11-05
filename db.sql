DROP SCHEMA public cascade;

CREATE SCHEMA public
  AUTHORIZATION na;

insert into sede (id, nome) values (nextval('sede_seq'), 'Fortaleza')

select * from aluno
insert into aluno (id,nome,sede_id) values
(nextval('aluno_seq'), 'ivo', 1),
(nextval('aluno_seq'), 'rui', 1),
(nextval('aluno_seq'), 'eva', 1),
(nextval('aluno_seq'), 'oto', 1),
(nextval('aluno_seq'), 'oma', 1),

insert into materia (id,nome) values
(1,'Introdução a Sabedoria do Oriente'),
(2, 'Psicologia')

insert into tema (id, nome, numero, materia_id) values
(nextval('_seq'), 'Tema I', 1,1),
(nextval('_seq'), 'Tema II', 2,1),
(nextval('_seq'), 'Tema III', 3,1),
(nextval('_seq'), 'Tema IV', 4,1);

insert into capitulo (id, nome, numero, tema_id) values
(nextval('_seq'), 'Introdução', 1,1),
(nextval('_seq'), 'O Enigma de Deus', 2,1),

(nextval('_seq'), 'Sistema Solar', 1,2),
(nextval('_seq'), 'Triplo Logos Solar', 2,2);

insert into professor (id, nome) values
(nextval('_seq'), 'Levi'),
(nextval('_seq'), 'Plicia'),
(nextval('_seq'), 'Aline');

insert into turma (id, nome) values
(nextval('_seq'), 'N2 Quarta Seneca'),
(nextval('_seq'), 'N2 Quarta Socrates');

insert into turma_alunos (turma_id, alunos_id) values
(12,1),(12,2),(12,3),(12,4),(12,5);

insert into turma_professores (turma_id, professores_id) values
(12,9),(12,10),(12,11);

