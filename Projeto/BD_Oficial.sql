CREATE DATABASE KarposTech;

USE KarposTech;

-- Tabela que armazenara os dados do produtor de algodão
CREATE TABLE cadastro (
    idCadastro INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(30) NOT NULL,
    documento VARCHAR(14) UNIQUE,
    cargo VARCHAR(14),
	telefone VARCHAR(11),
CONSTRAINT chkCargo CHECK (cargo IN('funcionario','administrador'))
);

CREATE TABLE login (            
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(30) NOT NULL,
	fkCadastro INT, CONSTRAINT fkCadastroLogin
    FOREIGN KEY(fkCadastro) REFERENCES Cadastro(idCadastro),
	fkFazenda INT, CONSTRAINT fkFazendaLogin
    FOREIGN KEY(fkFazenda) REFERENCES fazenda(idFazenda)
);

CREATE TABLE sensor (
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
    temperatura DECIMAL(4,2),
	umidade FLOAT,
    fkTerreno int, CONSTRAINT fkFazendaSensor
    FOREIGN KEY(fkFazenda) REFERENCES fazenda(idFazenda)
);

DESC sensor;
    
-- Tabela responsavel por armazenar os dados da fazenda
CREATE TABLE fazenda (
	idFazenda INT PRIMARY KEY AUTO_INCREMENT,
	endereco VARCHAR(50) NOT NULL,
	cep CHAR(8) NOT NULL,
	Hectares FLOAT NOT NULL,
	qtdSensores INT NOT NULL
);

INSERT INTO cadastro VALUES
(default,'Fernanda Caramico','fernanda.caramico@sptech.school','fern4nd4c4r4m1c0','12345678900','administrador','11924356879'),
(default,'Mauricio Almeida','mauricio.almeida@sptech.school','m4ur1c104lmeid4','12345678901','administrador','11924356878'),
(default,'Alexandre Frizzon','alexandre.frizzon@sptech.school','fern4nd4c4r4m1c0','12345678902','funcionario','11924356877');


INSERT INTO login VALUES
INSERT INTO sensor VALUES
INSERT INTO fazenda VALUES


SELECT concat(nome, email) FROM produtor;

SELECT concat(nome, ' ', email) FROM produtor;

SELECT concat('O produtor ', nome, ' possui o email ', email) 
FROM produtor;
    
SELECT concat(nome, email) FROM usuario;

SELECT concat(nome, ' ', email) FROM produtor;

SELECT concat('O usuario ', nome, ' possui o nivel de acesso: ', nivel_de_acesso) 
FROM usuario;