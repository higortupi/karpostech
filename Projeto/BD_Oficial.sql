CREATE DATABASE CottonCloud;

USE CottonCloud;

-- Tabela que armazenara os dados do produtor de algodão
CREATE TABLE produtor (
    idLogin INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    senha VARCHAR(60) NOT NULL,
    CPF CHAR(11),
    CNPJ CHAR(14),
    RNE CHAR(8)
);

DESC produtor;

-- Dados do usuario que fará o uso da aplicação (funcionário do produtor)
CREATE TABLE usuario (            
    idLogin INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    senha VARCHAR(60) NOT NULL,
    nivel_de_acesso VARCHAR(30) not null,
    CONSTRAINT chkacesso CHECK (nivel_de_acesso IN ('acesso total','acesso moderado','visualizador'))
);

DESC usuario;

-- Dados capturados pelo sensor de arduino 
CREATE TABLE sensor (
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
    temperatura DECIMAL(8,2),
	umidade FLOAT,
    estadoumidade VARCHAR(60),
    estadotemperatura VARCHAR(10),
    CONSTRAINT chkEstadotemperatura
    CHECK (estadotemperatura IN ('BOM', 'RUIM')),
    CONSTRAINT chkEstadoUmidade
    CHECK (estadoUmidade IN ('BOM', 'RUIM'))
);

DESC sensor;
    
-- Tabela responsavel por armazenar os dados da fazenda
CREATE TABLE fazenda (
	idfazenda INT PRIMARY KEY AUTO_INCREMENT,
	endereco VARCHAR(50) NOT NULL,
	cep char(7) NOT NULL,
	equitares FLOAT NOT NULL,
	qntsensor INT NOT NULL
);

DESC fazenda;
    
INSERT INTO produtor VALUES
(default,'Roberto santos','roberto112@gmail.com','5544466633','48291837483',null,null),
(default,'Jose Denilsnon','Jose222@gmail.com','José1223334','04692117095',null,null),
(default,'Amilton antines','amiltonss1223@gmail.com','angelica1234','02792832029',null,null),
(default,'Omar silva','omarsilva142@gmail.com','omar12/3','27130118091',null,null),
(default,'Luis Carlos','luis112@gmail.com','0Ly^71','51170006094',null,null),
(default,'Antonio cesar','cezar445@gmail.com','C11*h5','40635462095',null,null),
(default,'Bartolomeu andreias','bartolomeu112@gmail.com','56*Eu0','00431435049',null,null);
  
SELECT * FROM produtor;
    
INSERT INTO fazenda VALUES
(default,'rua turquia','049549',4,'4'),
(default,'palminopólis','2748557',5,6),
(default,'Rio Claro','2767857',8,7),
(default,'peruibe','5747657',5,6),
(default,'paranapiacaba','2744447',5,6),
(default,'Parnaiba','4448557',5,6),
(default,'Xique Xique','1234567',3,7);

SELECT * FROM fazenda;

INSERT INTO sensor VALUES 
(default,16,60,'BOM','BOM'),
(default,33,70,'RUIM','BOM'),
(default,20,82,'BOM','RUIM'),
(default,17,50,'BOM','BOM'),
(default,25,82,'RUIM','RUIM'),
(default,17,86,'BOM','RUIM');

SELECT * FROM sensor;

INSERT INTO usuario VALUES
(default,'josimar','josimar112@gmail.com','abacaxi123','acesso moderado'),
(default,'Willian','wilian112@gmail.com','melso123','acesso total'),
(default,'Antonio','Antonio112@gmail.com','12345678','visualizador'),
(default,'Arthur','arthur555@gmail.com','batatinha123','acesso moderado'),
(default,'wellington','well55112@gmail.com','766776123','acesso total'),
(default,'Caue','caue11332@gmail.com','7885775557','visualizador');

SELECT * FROM usuario;

SELECT concat(nome, email) FROM produtor;

SELECT concat(nome, ' ', email) FROM produtor;

SELECT concat('O produtor ', nome, ' possui o email ', email) 
FROM produtor;
    
SELECT concat(nome, email) FROM usuario;

SELECT concat(nome, ' ', email) FROM produtor;

SELECT concat('O usuario ', nome, ' possui o nivel de acesso: ', nivel_de_acesso) 
FROM usuario;