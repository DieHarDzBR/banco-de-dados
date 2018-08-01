create database dbinfox;
use dbinfox;
create table tb_clientes(
idcli int auto_increment primary key,
nomecli varchar(50) not null,
fonecli varchar(50) not null,
cpfcli varchar(15) unique,
emailcli varchar (50) not null
);
describe tb_clientes;

-- insert com valores nulos

insert into tb_clientes
values (null, 'Bill Gates','1111-1111','11111111111','bill@outlook.com');
select * from tb_clientes;

insert into tb_clientes
values (null, 'Linus Torvalds','2222-2222','22222222222','Linus@linux.com');

insert into tb_clientes
values (null, 'Steve Jobs','3333-3333','33333333333','steve@icloud.com');

-- inserindo valores de forma personalizada

insert into tb_clientes(nomecli,fonecli)
values (null,'Diogo Diniz','4444-4444');

select * from tb_clientes;

delete from tb_clientes where idcli=1;

insert into tb_clientes(nomecli,fonecli,emailcli)
values ('Bruce Wane','6666-6666','bruce@batman.com');

select * from tb_clientes;

-- drop table nome_tabela (apagar uma tabela)
-- decimal(10,2) tipo numerico real que aceita 10(digitos) 2(casa decimais)


create table tb_usuario(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15) not null,
login varchar(50) not null unique,
senha varchar (50) not null,
perfil varchar (50) not null
); 
describe tb_usuario;

insert into tb_usuario values

(1,'Diogo Diniz Serafim', '1313-1313', 'DieHarDzBR', '123@Senac','Aluno Senac');
insert into tb_usuario values
(2,'José de Assis', '2323-2323', 'Joseassis', '123@Senac','Professor Senac');
insert into tb_usuario values
(3,'Leandro Ramos', '3333-3333', 'LeandroRamos', '123@Senac','Professor Senac');
select * from tb_usuario; 













create table tb_os(
idos int auto_increment primary key,
equipamento varchar(100) not null,
defeito varchar(200) not null,
orcamento decimal(10,2) not null,
idcli int not null

);

show tables;
describe tb_os;
describe tb_clientes;

insert into tb_os(equipamento,defeito,orcamento)
values ('Notebook Lenovo','Não liga',250);

select * from tb_os;

insert into tb_os(equipamento,defeito,orcamento)
values ('iPad Air','Bateria Viciada',178.576);

select * from tb_os;

insert into tb_os(equipamento,defeito,orcamento)
values ('Celular Samsung J7','Explodiu',750.20);

select * from tb_os;

insert into tb_os(equipamento,defeito,orcamento)
values ('PC Gamer','Queimou VGA 1050Ti',902.5540);

alter table tb_os add idcli int;

describe tb_os;

select * from tb_os;
select * from tb_clientes;



-- removendo uma coluna da tabela
alter table tb_os drop column idcli;

alter table tb_os add idcli int not null;
delete from tb_os where idos = 4;

-- criando relacionamento do tipo 1 --- N entre a tabela cliente e idOS
-- constraint cria o relacionamento cliente_os (nome do recacionamento)
-- foreign key(coluna) (transforma a coluna em chave estrangeira)
-- references (referencia a chave primaria da tabela pai)
-- on delete no action (integridade dos dados)

alter table tb_os add constraint cliente_os
foreign key(idcli)
references tb_clientes(idcli)
on delete no action;

describe tb_os;
describe tb_clientes;

alter table tb_os add dataos timestamp default current_timestamp after idos;

insert into tb_os(equipamento,defeito,orcamento,idcli)
values ('notebook lenovo','travando',120,3);

-- criando relatorios personalizados, trazendo apenas os valores que eu quero
select idos, equipamento, defeito, orcamento from tb_os;
select idos as OS, equipamento as Equipamento, defeito as Defeito, orcamento as Total from tb_os;

-- Unindo dados de 2 tabelas relacionadas
-- O e C (são variaveis criadas para selecionar os campos das tabelas)


select O.idos as OS,equipamento as Equipamento, orcamento as Total, C.nomecli as Nome, fonecli as Telefone from tb_os as O inner join tb_clientes as C on (O.idcli = C.idcli);

