create database bdalgodao;
use bdalgodao;

create table login (
	iduser int primary key auto_increment,
    nome varchar(80),
    cep char(8),
    email varchar(100)
    );
    
create table sensor (
	idsensor int primary key auto_increment,
    temperatura numeric(11,2),
    umidade numeric(11,2),
    estadotemp varchar(20),
    estadoumi varchar(20),
    constraint chktemp check (estadotemp in('muito alto' , 'normal' , 'muito baixo')),
    constraint chkumi check (estadoumi in('muito alto' , 'normal' , 'muito baixo'))
    );
    
create table local (
	idlocal int primary key auto_increment,
    endereço varchar(150),
    hectares numeric(11,2),
    cep char(8)
	);
    
    insert into login values
		(default , 'Roberto Carlos' , 88888888 , 'roberto.carlos@gmail.com'),
        (default , 'José Carlos' , 44444444 , 'jose.carlos@gmail.com'),
        (default , 'Jonathans Adalberto' , 11111111 , 'jonathans.adalberto@gmail.com'),
        (default , 'Michelangelo Silva' , 22222222 , 'michelangelo.silva@outlook.com');
        
	insert into sensor values
		(default , '60' , '60' , 'muito alto' , 'normal'),
        (default , '23' , '95' , 'normal' , 'muito alto'),
        (default , '22' , '50' , 'normal' , 'normal'),
        (default , '9' , '9' , 'muito baixo' , 'muito baixo');
        
	insert into local values
		(default , 'Rua Capixabas' , 8 , 88888888),
        (default , 'Rua Cataratas' , 15 , 44444444),
        (default , 'Rua Dantas' , 100 , 11111111),
        (default , 'Rua Catapimbas' , 1500, 22222222);
        

        
        
    
    
    