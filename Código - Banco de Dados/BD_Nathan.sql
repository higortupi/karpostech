create database dbcottoncloud;
use dbcottoncloud;

create table usuario(
idUsuario int not null auto_increment primary key,
nome varchar(40) not null,
email varchar(40) not null,
senha varchar(12) not null
);

create table cliente(
idCliente int not null auto_increment primary key,
empresa varchar(40) not null,
representante varchar(40) not null,
cnpj varchar(14) not null
);

create table registroSensor(
idRegistro int not null auto_increment primary key,
temperatura decimal(4,2) not null,
umidade decimal(4,2) not null,
data_hora datetime
);

insert into usuario(nome, email, senha) values
('Roberto', 'roberto@gmail.com', 'roberto@123'),
('Silvia', 'silvia@gmail.com', 'silvia@123'),
('Adriana', 'adriana@gmail.com', 'adriana@123');

insert into cliente values
(default, 'Fazenda do Algodão', 'João', '00011122233344'),
(default, 'Algodão do Campo', 'José', '11122233344455'),
(default, 'Algodão Macio', 'Maria', '22233344455566');

insert into registroSensor(temperatura, umidade, data_hora) values 
(30.25, 60.00, '2024-03-03 13:00:00'),
(30.00, 60.00, '2024-03-03 13:01:00'),
(29.75, 60.00, '2024-03-03 13:02:00');

select * from usuario;
select * from cliente;
select * from registroSensor;