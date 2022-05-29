create database projeto_individual;

use projeto_individual;

create table usuarios(
idUsuario int primary key auto_increment,
nomeUsuario varchar(50),
emailUsuario varchar(80),
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







