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

select round(avg(qtd_acertos),2) from resultado_quiz;

select qtd_acertos from resultado_quiz;


select qtd_acertos quantidadeAcertos,count(qtd_acertos) quantidadeJogadas from resultado_quiz group by qtd_acertos;


select usuarios.nomeUsuario, resultado_quiz.qtd_acertos quantidadeAcertos from usuarios 
inner join resultado_quiz on usuarios.idUsuario = resultado_quiz.fk_usuario order by qtd_acertos desc;


select round(avg(qtd_acertos),2) mediaAcertos from resultado_quiz;

