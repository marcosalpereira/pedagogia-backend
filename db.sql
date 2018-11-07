DROP SCHEMA public cascade; CREATE SCHEMA public AUTHORIZATION na;

begin transaction;

-- Select * from sede
insert into sede (nome) values ('Fortaleza');

-- select * from aluno
insert into aluno (nome,sede_id) values
('ivo', 1),
('rui', 1),
('eva', 1),
('oto', 1),
('oma', 1);

insert into materia (nome) values
('Introdu??o a Sabedoria do Oriente'),
('Psicologia');

insert into tema ( nome, numero, materia_id) values
('Tema I', 1,1),
('Tema II', 2,1),
('Tema III', 3,1),
('Tema IV', 4,1);


insert into capitulo ( nome, numero, tema_id) values
('Introdu??o', 1,1),
('O Enigma de Deus', 2,1),
('Sistema Solar', 1,2),
('Triplo Logos Solar', 2,2);

insert into professor ( nome) values
('Levi'),
('Plicia'),
('Aline');



-- select * from turma
insert into turma ( nome, dia_semana) values
('N2 Quarta Seneca', 4),
('N2 Quarta Socrates', 4);

insert into turma_alunos (turma_id, alunos_id) values
(1,1),(1,2),(1,3),(1,4),(1,5);

insert into turma_professores (turma_id, professores_id) values
(1,1),(1,2),(1,3);

commit transaction;