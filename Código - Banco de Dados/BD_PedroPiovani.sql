create database CottonCloud;
use CottonCloud;

create table Usuário(
idUsuario int primary key auto_increment,
nome varchar(40) not null,
email varchar(100) not null,
cpf char(11),
telefone char(11),
cnpj char(14)
);

create table Sensor(
idSensor int primary key auto_increment,
sensorUmidade decimal(5,2),
estadoUmidade varchar(30),
sensorTemperatura decimal(3,1),
estadoTemperatura varchar(30),
constraint chkEstadoUmidade check(estadoUmidade in('Bom', 'Grave')),
constraint chkEstadoTemperatura check(estadoTemperatura in('Bom', 'Grave'))
);

create table Fazenda(
idFazenda int primary key auto_increment,
endereço varchar(50) not null,
cep char(8) not null,
qtdHectares float not null
);

desc Usuário;
desc Sensor;
desc Fazenda;

insert into Usuário values
(default, 'Pedro Piovani', 'pedro.franca@sptech.school', 53420430850, 11945124492, 12345678909876);
insert into Sensor values
(default, 52.78, 'Grave', 12.3, 'Bom');
insert into Fazenda values
(default, 'Rua Forte de Santos, 75', 08340040, 3000);

select * from Usuário;
select * from Sensor;
select * from Fazenda;