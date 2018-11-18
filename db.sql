-- DROP SCHEMA public cascade; CREATE SCHEMA public AUTHORIZATION na;

-- rollback transaction;

begin transaction;

-- Select * from sede
insert into sede (nome) values ('Fortaleza');

insert into usuario(nome, email, sede_id,senha) values
('Admin', 'na@na.com.br', 1, '$2a$10$vssQKkloi0UM1jDr3HIll.cCTtKzGLhXQbfcMHE5tq84Fc/kSNfB.'),
('User', 'user@na.com.br', 1, '$2a$10$vssQKkloi0UM1jDr3HIll.cCTtKzGLhXQbfcMHE5tq84Fc/kSNfB.');

insert into perfil (nome) values 
('ROLE_ADMIN'),
('ROLE_USER');

insert into usuario_perfils (usuario_id, perfils_id) values
(1,1),
(2,2);

insert into nivel (numero)
values (1),(2),(3);

insert into materia (nome, nivel_id) values
('Introducao a Sabedoria do Oriente', 2),
('Psicologia', 2),
('Introdução Socio Politica',1);

insert into tema ( nome, numero, materia_id) values
('Tema I', 1,1),
('Tema II', 2,1),
('Tema III', 3,1),
('Tema IV', 4,1),
('Tema I', 1, 2),
('Tema I', 1, 3);

insert into capitulo ( nome, numero, tema_id) values
('Introducão', 1,1),
('O Enigma de Deus', 2,1),
('Sistema Solar', 1,2),
('Triplo Logos Solar', 2,2),
('Introdução', 1, 5),
('Introdução', 1, 6)
;


-- select * from aluno
insert into aluno (nome,sede_id) values
('Carmem Debora Lopes Barbosa',1),
('Carmem Lucia Dantas Moura',1),
('Gisele Leal De Paula',1),
('Kalyne Madeira Furtado',1),
('Marcio Azevedo Silva',1),
('Marcos Antonio Lacerda Pereira',1),
('Marina Rocha Rolim',1),
('Michel Pinho De Alcântara',1),
('Raquel Pinheiro SÁ Matos',1),
('Ruth Camara',1),
('ivo', 1),
('rui', 1),
('eva', 1),
('Raí', 1),
('Oto', 1)
;

insert into professor (nome, sede_id) values
('Levi', 1),
('Plicia', 1),
('Aline', 1);

insert into turma ( nome, dia_semana, sede_id, nivel_id) values
('Seneca', 2, 1, 2),
('Seneca', 3, 1, 2),
('Socrates', 2, 1, 1);

insert into turma_alunos (turma_id, alunos_id) values
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),
(2,11),(2,12),(2,13),
(3,14),(3,15);

insert into turma_professores (turma_id, professores_id) values
(1,1),(1,2),(1,3),
(2,1),(2,2);

commit transaction;
