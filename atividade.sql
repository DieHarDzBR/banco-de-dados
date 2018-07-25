create database dbinfox;
use dbinfox;
show tables;
create table tb_clientes(
idcli int auto_increment primary key,
cpfcli varchar(15) not null,
nomecli varchar(50) not null,
cep varchar(50) not null,
tipo  varchar(100) not null,
complemento varchar (50), 
bairro varchar (50) not null,
cidade varchar (50) not null,
uf char (2) not null,
fone1 varchar (50) not null,
fone2 varchar (50),
emailcli varchar (50) not null
);
describe tb_clientes;

-- insert com valores nulos
describe tb_clientes;

insert into tb_clientes
values (null, '11111111111','Joao Silva','01100110','rua','casa','parque jorge','Santo André','SP','01110001000)',null,'joaosilva@gmail.com');
select * from tb_clientes;

insert into tb_clientes
values (null, '22222222222','Fernando Lima','02200220','Avenida','Apartamento 23','Santana','São Paulo','SP','01120002000','01121212121','fernandolima@outlook.com');

insert into tb_clientes
values (null, '33333333333','Pedro Eustacio','03300330','Rua',null,'Santa Efigenea','São Paulo','SP','01130003000','01131313131','Pedroeustacio@hotmail.com');

insert into tb_clientes
values (null, '44444444444','Julio Cleonice','04400440','Rua','Fundos','Santo Amaro','São Paulo','SP','01140004000','01141414141','juliocleonice@hotmail.com');

insert into tb_clientes
values (null, '55555555555','Felipe Matos','05500550','Avendia',null,'Barra da Tijuca','Rio de Janeiro','RJ','02150005000','02151515151','felipecarioca@bol.com');
