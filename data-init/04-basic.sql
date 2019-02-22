
insert into sede (nome) values ('Fortaleza');

insert into usuario(nome, email, sede_id,senha, enaled) values
('Admin', 'na@na.com.br', 1, '$2a$10$vssQKkloi0UM1jDr3HIll.cCTtKzGLhXQbfcMHE5tq84Fc/kSNfB.', true),
('User', 'user@na.com.br', 1, '$2a$10$vssQKkloi0UM1jDr3HIll.cCTtKzGLhXQbfcMHE5tq84Fc/kSNfB.', true);

insert into perfil (nome) values
('ROLE_ADMIN'),
('ROLE_USER');

insert into usuario_perfils (usuario_id, perfils_id) values
(1,1),
(2,2);

insert into nivel (codigo)
values ('N1'),('N2'),('N3');
