                        -- Protótipo do banco de dados--
			
            
create database cottonCloud;

use cottonCloud;

create table User(
	idUser int primary key auto_increment,
    Nome varchar(35) not null,
    Email varchar(50) not null,
    Telefone char(11) null,
    CPF char(11) ,
    RNE char(8) ,
    CNPJ char(14)
);		

create table sensor(
	sensorUmidade decimal(5,2),
    sensorTemp decimal(3,1)
);

alter table sensor add column idSensor int primary key auto_increment  first;

desc sensor;


Create table Empresa(
	Nome varchar(30),
    PlantacaoHect int,
    CNPJ char(14),
    Qtdsensores int
);

desc User;

desc sensor;

desc Empresa;

insert into user(nome,email,telefone,cpf,cnpj) values
	('Admilson Tralarino','adtralarino@hotmail.com','11998948944','12345678911','12345678911234');
    
select*from user;
    
select nome from user
	where nome like 'Admilson %';
    
insert into sensor values
	(58.52,50.8);
    
select*from sensor;
    
select * from sensor
	where sensorUmidade like '5_%';
    
insert into Empresa values
('Cotton Cloud Soluctions',3000,'1234567891234',10);

desc empresa;
    
    