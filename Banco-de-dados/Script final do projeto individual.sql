create database projeto_individual;

use projeto_individual;

create table usuarios(
idUsuario int primary key auto_increment,
nomeUsuario varchar(50),
emailUsuario varchar(80) unique,
senhaUsuario varchar(50));

create table resultado_quiz(
idResultado int auto_increment,
fk_usuario int,
foreign key (fk_usuario) references usuarios (idUsuario),
primary key (idResultado,fk_usuario),
qtd_acertos int,
data_hora datetime default current_timestamp);

select * from usuarios;

select * from resultado_quiz;

select round(avg(qtd_acertos),2) from resultado_quiz;

select qtd_acertos from resultado_quiz;


select qtd_acertos quantidadeAcertos,count(qtd_acertos) quantidadeJogadas from resultado_quiz group by qtd_acertos;


select usuarios.nomeUsuario, resultado_quiz.qtd_acertos quantidadeAcertos from usuarios 
inner join resultado_quiz on usuarios.idUsuario = resultado_quiz.fk_usuario order by qtd_acertos desc;




insert into usuarios values
(null, 'Gustavo', 'gustavo@gmail.com', '12345'),
(null, 'Kawan', 'kawan@gmail.com', '12345'),
(null, 'Yohan', 'yohan@gmail.com', '12345'),
(null, 'Leonardo', 'leonardo@gmail.com', '12345'),
(null, 'Rafael', 'rafael@gmail.com', '12345');


insert into resultado_quiz values
(null, 1, 5, null),
(null, 1, 0, null),
(null, 2, 0, null),
(null, 3, 1, null),
(null, 4, 2, null),
(null, 4, 7, null),
(null, 5, 6, null),
(null, 1, 3, null),
(null, 1, 0, null),
(null, 2, 0, null),
(null, 3, 8, null),
(null, 4, 6, null),
(null, 5, 2, null),
(null, 5, 1, null),
(null, 3, 4, null),
(null, 2, 5, null);
