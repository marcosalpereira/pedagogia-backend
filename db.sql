﻿-- DROP SCHEMA public cascade; CREATE SCHEMA public AUTHORIZATION na;

-- rollback transaction;

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
('Introducao a Sabedoria do Oriente'),
('Psicologia');


-- select * from entrega_tema
-- truncate table entrega_tema cascade;
-- UPDATE entrega_tema set version = 99
insert into tema ( nome, numero, materia_id) values
('Tema I', 1,1),
('Tema II', 2,1),
('Tema III', 3,1),
('Tema IV', 4,1);


insert into capitulo ( nome, numero, tema_id) values
('Introducão', 1,1),
('O Enigma de Deus', 2,1),
('Sistema Solar', 1,2),
('Triplo Logos Solar', 2,2);

insert into professor (nome, sede_id) values
('Levi', 1),
('Plicia', 1),
('Aline', 1);

--alter table aula drop column professor_id cascade;

-- select * from turma
insert into turma ( nome, dia_semana, sede_id) values
('N2 Quarta Seneca', 2, 1),
('N2 Quarta Socrates', 2, 1);

insert into turma_alunos (turma_id, alunos_id) values
(1,1),(1,2),(1,3),(1,4),(1,5);

insert into turma_professores (turma_id, professores_id) values
(1,1),(1,2),(1,3);

insert into turma_materias (turma_id, materias_id) values
(1,1),(1,2);



commit transaction;