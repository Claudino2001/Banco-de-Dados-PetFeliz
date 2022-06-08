create table tb_cliente(
    id_cliente int not null,
    cpf varchar(30) not null,
    nome varchar(100) not null,
    dt_nascimento date not null,
    sexo char(1) not null,
    email varchar(30) not null,
    rg varchar(30) not null
);

create table tb_empregado(
    id_empregado int not null,
    cpf varchar(30) not null,
    nome varchar(100) not null,
    dt_nascimento date not null,
    sexo char(1) not null,
    email varchar(30) not null,
    rg varchar(30) not null,
    dt_admissao date not null
);

create table tb_pais(
    id_pais int not null,
    nome varchar(50) not null
);

create table tb_estado(
    id_estado int not null,
    id_pais int not null,
    nome varchar(50) not null
);

create table tb_cidade(
    id_cidade int not null,
    id_estado int not null,
    nome varchar(50) not null
);

create table tb_logradouro(
    id_logradouro int not null,
    id_cidade int not null,
    nome varchar(50) not null,
    numero int not null
);

create table tb_endereco(
    id_endereco int not null,
    id_cliente int not null,
    id_empregado int not null,
    id_logradouro int not null,
    complemento varchar(100) not null
);

create table tb_telefone(
    id_telefone int not null,
    id_cliente int,
    id_empregado int,
    ddd int not null,
    num_telefone int not null
);

create table tb_medico(
    crmv varchar(15) not null,
    id_empregado int not null
);

create table tb_consulta(
    id_consulta int not null,
    crmv varchar(15) not null,
    id_pet int not null,
    preco numeric(9, 2) not null,
    dt_consulta date not null,
    inicio time not null,
    termino time not null
);

create table tb_procedimento(
    id_procedimento int not null,
    id_pet int not null,
    int_servico int not null,
    dt_procedimento date not null,
    inicio time not null,
    termino time not null
);

create table tb_servicos(
    id_servicos int not null,
    tipo varchar(20) not null,
    preco numeric(9, 2) not null
);

create table especie(
    id_especie int not null,
    nome varchar(30) not null
);

create table tb_raca(
    id_raca int not null,
    id_especie int not null,
    nome varchar(30) not null
);

create table tb_pet(
    id_pet int not null,
    id_cliente int not null,
    id_raca int not null,
    nome varchar(50) not null,
    sexo char(1) not null,
    dt_nascimento date not null,
    tp_sangue varchar(3) not null
);

create table tb_medidas_animal(
    id_pet int not null,
    dt_medida date not null,
    peso float not null,
    altura float not null,
    comprimento float not null
);

create table tb_compra(
    id_compra int not null,
    id_cliente int not null,
    id_empregado int not null,
    dt_compra datetime not null
);

create table tb_lotecompra(
    id_lotecompra int not null,
    id_compra int not null,
    id_lote int not null,
    quantidade int not null
);

create table tb_produto(
    id_produto int not null, 
    nome varchar(30) not null
);