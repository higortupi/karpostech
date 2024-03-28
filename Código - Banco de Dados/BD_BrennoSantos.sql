create database pialgodao;
use pialgodao;

CREATE TABLE produtor (
    idlogin INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    senha VARCHAR(60) NOT NULL,
    cpf CHAR(11),
    cnpj CHAR(14),
    rne CHAR(8)
);

DESC produtor


CREATE TABLE usuario (
    idlogin INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    senha VARCHAR(60) NOT NULL,
    nivel_de_acesso VARCHAR(30) not null,
    constraint chkacesso check (nivel_de_acesso in ('acesso total','acesso moderado','visualizador'))
);

-- produtor
-- DADOS DIRETO DO CLIENTE

-- usuario
 -- USUARIO
 -- EMAIL
 -- SENHA
 -- NIVEL_DE_ACESSO

create table sensor (
	idsensor int primary key auto_increment,
    temperatura decimal(8,2),
	umidade float,
    estadoumidade varchar(60),
    estadotemperatura varchar(10),
    CONSTRAINT chkEstadotemperatura
    CHECK (estadotemperatura IN ('BOM', 'RUIM')),
    CONSTRAINT chkEstadoUmidade
    CHECK (estadoUmidade IN ('BOM', 'RUIM'))
);
    

create table fazenda(
	idfazenda int primary key auto_increment,
	endereco varchar(50) not null,
	cep char(7) not null,
	equitares float not null ,
	qntsensor int not null
);

desc sensor;
    
    
    
    
    
