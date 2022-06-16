create table tb_cliente(
    id_cliente int not null,
    cpf varchar(30) not null,
    nome varchar(100) not null,
    dt_nascimento date not null,
    sexo char(01) not null,
    email varchar(100) not null,
    rg varchar(30) not null,
    primary key(id_cliente)
);

create table tb_empregado(
    id_empregado int not null,
    cpf varchar(30) not null,
    nome varchar(100) not null,
    dt_nascimento date not null,
    sexo char(01) not null,
    email varchar(30) not null,
    rg varchar(30) not null,
    dt_admissao date not null,
    cargo varchar(15) not null,
    primary key(id_empregado)
);

create table tb_pais(
    id_pais int not null,
    nome varchar(50) not null,
    primary key(id_pais)
);

create table tb_estado(
    id_estado int not null,
    id_pais int not null,
    nome varchar(50) not null,
    primary key(id_estado)
);

create table tb_cidade(
    id_cidade int not null,
    id_estado int not null,
    nome varchar(50) not null,
    primary key(id_cidade)
);

create table tb_logradouro(
    id_logradouro int not null,
    id_cidade int not null,
    nome varchar(50) not null,
    bairro varchar(50),
    numero int not null,
    primary key(id_logradouro)
);

create table tb_endereco(
    id_endereco int not null,
    id_cliente int,
    id_empregado int,
    id_logradouro int not null,
    complemento varchar(100),
    primary key(id_endereco)
);

create table tb_telefone(
    id_telefone int not null,
    id_cliente int,
    id_empregado int,
    ddd int not null,
    num_telefone int not null,
    primary key(id_telefone)
);

create table tb_medico(
    crmv int not null,
    id_empregado int not null,
    primary key(crmv)
);

create table tb_consulta(
    id_consulta int not null,
    crmv int not null,
    id_pet int not null,
    preco numeric(9, 2) not null,
    dt_inicio timestamp not null,
    dt_termino timestamp not null,
    primary key(id_consulta)
);

create table tb_procedimento(
    id_procedimento int not null,
    id_pet int not null,
    id_servicos int not null,
    dt_inicio timestamp not null,
    dt_termino timestamp not null,
    primary key(id_procedimento)
);

create table tb_servicos(
    id_servicos int not null,
    tipo varchar(20) not null,
    preco numeric(9, 2) not null,
    primary key(id_servicos)
);

create table tb_especie(
    id_especie int not null,
    nome varchar(30) not null,
    primary key(id_especie)
);

create table tb_raca(
    id_raca int not null,
    id_especie int not null,
    nome varchar(30) not null,
    primary key(id_raca)
);

create table tb_pet(
    id_pet int not null,
    id_cliente int not null,
    id_raca int not null,
    nome varchar(50) not null,
    sexo char(1) not null,
    dt_nascimento date not null,
    tp_sangue varchar(3) not null,
    primary key(id_pet)
);

create table tb_medidas_animal(
    id_pet int not null,
    dt_medida date not null,
    peso float not null,
    altura float not null,
    comprimento float not null,
    primary key(id_pet)
);

create table tb_compra(
    id_compra int not null,
    id_cliente int not null,
    id_empregado int not null,
    dt_compra timestamp not null,
    primary key(id_compra)
);

create table tb_lote(
    id_lote int not null,
    id_produto int,
    id_medicamento int,
    id_fornecedor int not null,
    dt_chegada timestamp not null,
    qtd_recebida int not null,
    validade date not null,
    valor_pago numeric(9, 2) not null,
    primary key(id_lote)
);

create table tb_lotecompra(
    id_lotecompra int not null,
    id_compra int not null,
    id_lote int not null,
    quantidade int not null,
    primary key(id_lotecompra)
);

create table tb_produto(
    id_produto int not null,
    nome varchar(100) not null,
    estoque int not null,
    preco_venda numeric(9, 2) not null,
    primary key(id_produto)
);

create table tb_medicamento(
    id_medicamento int not null,
    nome varchar(100) not null,
    estoque int not null,
    preco_venda numeric(9, 2) not null,
    primary key(id_medicamento)
);

create table tb_fornecedor(
    id_fornecedor int not null,
    nome varchar(100) not null,
    cnpj varchar(50) not null,
    primary key(id_fornecedor)
);

alter session set nls_date_format = 'DD/MM/YYYY';

alter session set nls_timestamp_format = 'DD/MM/YYYY HH24:MI:SS';

-- RESTRICOES --

alter table 
    tb_telefone 
add constraint 
    CK_Tefefone check ((id_cliente is null and id_empregado is not null) or (id_cliente is not null and id_empregado is null));
    
alter table 
    tb_endereco
add constraint 
    CK_Endereco check ((id_cliente is null and id_empregado is not null) or (id_cliente is not null and id_empregado is null));
    
alter table 
    tb_lote 
add constraint 
    CK_Lote check ((id_produto is null and id_medicamento is not null) or (id_produto is not null and id_medicamento is null));

alter table 
    tb_cliente 
add constraint ck_sexo_cliente check (sexo in ('M','F'));

alter table
    tb_telefone
add constraint ck_ddd check (DDD < 100 and DDD > 0);

alter table 
    tb_empregado 
add constraint ck_sexo_empregado check (sexo in ('M','F'));

alter table 
    tb_pet 
add constraint ck_sexo_pet check (sexo in ('M','F'));


-- CRIANDO AS SEQUENCIAS --

create sequence sq_cliente;

create sequence sq_empregado;

create sequence sq_pais;

create sequence sq_estado;

create sequence sq_cidade;

create sequence sq_logradouro;

create sequence sq_endereco;

create sequence sq_telefone;

create sequence sq_consulta;

create sequence sq_procedimento;

create sequence sq_servicos;

create sequence sq_especie;

create sequence sq_raca;

create sequence sq_pet;

create sequence sq_compra;

create sequence sq_lote;

create sequence sq_lotecompra;

create sequence sq_produto;

create sequence sq_medicamento;

create sequence sq_fornecedor;

-- CRIANDO TODAS AS FOREIGN KEY --
alter table
    tb_estado
add
    constraint fk_estado_pais foreign key (id_pais) references tb_pais (id_pais);

alter table
    tb_cidade
add
    constraint fk_cidade_estado foreign key (id_estado) references tb_estado (id_estado);

alter table
    tb_logradouro
add
    constraint fk_logradouro_cidade foreign key (id_cidade) references tb_cidade (id_cidade);

alter table
    tb_endereco
add
    constraint fk_endereco_logradouro foreign key (id_logradouro) references tb_logradouro (id_logradouro);

alter table
    tb_endereco
add
    constraint fk_endereco_cliente foreign key (id_cliente) references tb_cliente (id_cliente);

alter table
    tb_endereco
add
    constraint fk_endereco_empregado foreign key (id_empregado) references tb_empregado (id_empregado);

alter table
    tb_telefone
add
    constraint fk_telefone_cliente foreign key (id_cliente) references tb_cliente (id_cliente);

alter table
    tb_telefone
add
    constraint fk_telefone_empregado foreign key (id_empregado) references tb_empregado (id_empregado);

alter table
    tb_medico
add
    constraint fk_medico_empregado foreign key (id_empregado) references tb_empregado (id_empregado);

alter table
    tb_consulta
add
    constraint fk_consulta_medico foreign key (crmv) references tb_medico (crmv);

alter table
    tb_consulta
add
    constraint fk_consulta_pet foreign key (id_pet) references tb_pet (id_pet);

alter table
    tb_procedimento
add
    constraint fk_procedimento_servicos foreign key (id_servicos) references tb_servicos (id_servicos);

alter table
    tb_procedimento
add
    constraint fk_procedimento_pet foreign key (id_pet) references tb_pet (id_pet);

alter table
    tb_raca
add
    constraint fk_raca_especie foreign key (id_especie) references tb_especie (id_especie);

alter table
    tb_pet
add
    constraint fk_pet_cliente foreign key (id_cliente) references tb_cliente (id_cliente);

alter table
    tb_pet
add
    constraint fk_pet_raca foreign key (id_raca) references tb_raca (id_raca);

alter table
    tb_medidas_animal
add
    constraint fk_medidas_pet foreign key (id_pet) references tb_pet (id_pet);

alter table
    tb_compra
add
    constraint fk_compra_cliente foreign key (id_cliente) references tb_cliente (id_cliente);

alter table
    tb_compra
add
    constraint fk_compra_empregado foreign key (id_empregado) references tb_empregado (id_empregado);

alter table
    tb_lote
add
    constraint fk_lote_produto foreign key (id_produto) references tb_produto (id_produto);

alter table
    tb_lote
add
    constraint fk_lote_medicamento foreign key (id_medicamento) references tb_medicamento (id_medicamento);

alter table
    tb_lote
add
    constraint fk_lote_fornecedor foreign key (id_fornecedor) references tb_fornecedor (id_fornecedor);

alter table
    tb_lotecompra
add
    constraint fk_lotecompra_compra foreign key (id_compra) references tb_compra (id_compra);

alter table
    tb_lotecompra
add
    constraint fk_lotecompra_lote foreign key (id_lote) references tb_lote (id_lote);
alter table
    tb_empregado
add
    constraint empregado_unique unique (cpf, rg, email);
alter table
    tb_cliente
add
    constraint cliente_unique unique (cpf, rg); -- nao sei se coloca email tambem...--
alter table
    tb_medico
add 
    constraint medico_unique unique (crmv);
