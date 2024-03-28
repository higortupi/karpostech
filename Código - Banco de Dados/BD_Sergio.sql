-- TABELAS PROJETO DO ALGODÃO

create database projetoPI;

use projetoPI;

create table usuario(
idUsuario int primary key,
nomeCompleto varchar (100) not null,
CEP char (8),
logradouro varchar (50),
numeroRua int,
email varchar (100),
senha varchar (100),
telefoneContato int
);

desc usuario;

create table fazenda(
idFazenda int primary key,
hectares int,
CEP char (8)
);

create table sensoresUmidade(
idSensor int primary key,
hora date,
umidade int
); 
 create table sensorTemperatura(
 idSensor int primary key,
 hora date,
 temperatura int
 );


