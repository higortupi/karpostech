CREATE DATABASE CottonCloud;

USE CottonCloud;

CREATE TABLE cliente (
idCliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
telefone CHAR(11),
email VARCHAR(50),
CPF CHAR(11),
CNPJ CHAR(14)
);

DESC cliente;

INSERT INTO cliente VALUES
(default, 'Maria', '11987878787', 'mariazinha@gmail.com', '99988877766', '00012222333311'),
(default, 'José', '11965656565', 'jose@gmail.com', '66655544433', '00014444333322'), 
(default, 'Claudio', '11954545454', 'claudinho@gmail.com', '77755566699', '00017777888899'),
(default, 'Ana', '11912121212', 'aninha@gmail.com', '22233311155', '00012222555588');

SELECT * FROM cliente;

INSERT INTO cliente (nome) VALUES
('Camila');

SELECT * FROM cliente WHERE nome LIKE '%i_';

ALTER TABLE cliente MODIFY COLUMN telefone CHAR(12);

ALTER TABLE cliente ADD COLUMN estadoCivil VARCHAR(10);

ALTER TABLE cliente DROP COLUMN estadoCivil;

CREATE TABLE sensor (
temperatura DECIMAL(5,2),
umidade DECIMAL(3,1),
calendario DATE,
estado VARCHAR(20)
);

ALTER TABLE sensor ADD CONSTRAINT chkEstado 
CHECK (estado IN ('bom', 'alerta', 'urgente'));

INSERT INTO sensor VALUES
(25, 70, '2024-02-03', 'bom'),
(24, 80, '2024-02-04', 'alerta'),
(25, 90, '2024-02-05', 'urgente');

SELECT * FROM sensor;

SELECT umidade, temperatura FROM sensor WHERE estado = 'alerta';

CREATE TABLE plantação (
idPlantação INT PRIMARY KEY AUTO_INCREMENT,
proprietário VARCHAR(50),
CEP CHAR(8),
qtdHectare INT,
sensoresImplantados INT
);

INSERT INTO plantação VALUES 
(default, 'Maria', '05560123', 10, 10),
(default, 'José', '02270321', 5, 3),
(default, 'Claudio', '05580987', 9, 6),
(default, 'Ana', '04450454', 12, 6);

SELECT * FROM plantação;

UPDATE plantação SET sensoresImplantados = 100 
WHERE idPlantação = 1;

SELECT * FROM plantação WHERE idPlantação = 1;

DELETE FROM plantação WHERE idPlantação = 3;

SELECT * FROM plantação;

TRUNCATE TABLE plantação;

