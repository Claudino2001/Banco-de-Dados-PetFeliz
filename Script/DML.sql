-- INSERINDO VALORES --

/*
INSERT INTO table_name
VALUES (value1, value2, value3, ...);
*/

-- TB_ CLIENTE --
INSERT INTO tb_cliente VALUES (sq_cliente.nextval, '911.880.973-18', 'Rebeca Aline', '08/06/1998', 'F', 'rebeca_viana@valedesign.com.br', '43.920.175-5');
INSERT INTO tb_cliente VALUES (sq_cliente.nextval, '993.936.888-77', 'Luiza Baptista', '14/06/1945', 'F', 'luiza_joana@vivo.com.br', '429.032.711-8');
INSERT INTO tb_cliente VALUES (sq_cliente.nextval, '752.287.170-05', 'Tim Maia', '01/02/1963', 'M', 'francisco@dye.com.br', '21.202.611-2');
INSERT INTO tb_cliente VALUES (sq_cliente.nextval, '983.311.522-55', 'Elias Rosa', '19/02/1964', 'M', 'elias@solution.com.br', '43.073.852-3');

-- TB_ EMPREGADO --
INSERT INTO tb_empregado VALUES (sq_empregado.nextval, '406.511.938-34', 'Bianca Rosa Assis', '23/02/1965', 'F', 'bianca_rosa_assis@ssala.com.br', '49.319.934-2', '12/03/1975');
INSERT INTO tb_empregado VALUES (sq_empregado.nextval, '222.444.555-01', 'Silvio Santos', '10/09/1800', 'M', 'santinho@sbt.com.br', '92.422.345-9', '01/09/2002');
INSERT INTO tb_empregado VALUES (sq_empregado.nextval, '406.511.938-34', 'Francisco Yuri Ryan Caldeira', '23/02/1965', 'F', 'bianca_rosa_assis@ssala.com.br', '49.319.934-2', '12/03/1975');
INSERT INTO tb_empregado VALUES (sq_empregado.nextval, '519.920.221-94', 'Mariah Bernardes', '18/03/1981', 'F', 'mariah@julianacaran.com.br', '36.529.019-1', '25/04/2013');
INSERT INTO tb_empregado VALUES (sq_empregado.nextval, '480.899.460-70', 'Renan Nogueira', '01/01/1953', 'M', 'renan_b@inepar.com.br', '41.498.526-6', '31/03/1998');
INSERT INTO tb_empregado VALUES (sq_empregado.nextval, '234.694.920-72', 'Roberto Carlos', '10/09/1953', 'M', 'betinho@globo.com.br', '12.422.556-9', '01/09/2001');

-- TB_FORNECEDOR --
INSERT INTO tb_fornecedor VALUES (sq_fornecedor.nextval, 'Amazon', '15.436.940/0001-03');
INSERT INTO tb_fornecedor VALUES (sq_fornecedor.nextval, 'Atacadão Atakarejo', '73.849.952/0001-58');
INSERT INTO tb_fornecedor VALUES (sq_fornecedor.nextval, 'Lojas Amaricanas S.A', '33.014.556/0001-96');
INSERT INTO tb_fornecedor VALUES (sq_fornecedor.nextval, 'Pfizer', '46.070.868/0019-983');
INSERT INTO tb_fornecedor VALUES (sq_fornecedor.nextval, 'Johnson & Johnson', '54.516.661/0002-84');

-- RB_MEDICAMENTOS --
INSERT INTO tb_medicamento VALUES (sq_medicamento.nextval, 'Ácido acetilsalicílico ', 140, 10);
INSERT INTO tb_medicamento VALUES (sq_medicamento.nextval, 'Diclofenaco Cataflan', 69, 42);
INSERT INTO tb_medicamento VALUES (sq_medicamento.nextval, 'Paracetamol', 140, 5);
INSERT INTO tb_medicamento VALUES (sq_medicamento.nextval, 'Ibuprofeno ', 120, 6);
INSERT INTO tb_medicamento VALUES (sq_medicamento.nextval, 'Antipulgas e Carrapatos', 150, 187);

-- TB_PRODUTO --
INSERT INTO tb_produto VALUES (sq_produto.nextval, 'Caixa de Areia', 25, 60.0);
INSERT INTO tb_produto VALUES (sq_produto.nextval, 'Ração Premium', 40, 115.50);
INSERT INTO tb_produto VALUES (sq_produto.nextval, 'Coleira Grande', 32, 54.90);
INSERT INTO tb_produto VALUES (sq_produto.nextval, 'Bebedouro Automático', 20, 140.0);
INSERT INTO tb_produto VALUES (sq_produto.nextval, 'Bola', 27, 18.90);
INSERT INTO tb_produto VALUES (sq_produto.nextval, 'Petisco', 41, 24.99);

-- TB_MEDICO -- 
INSERT INTO tb_medico VALUES (51924, 1);
INSERT INTO tb_medico VALUES (12247, 3);



-- TB_PAIS --
INSERT INTO tb_pais VALUES (sq_pais.nextval, 'Brasil');

-- TB_ESTADO --
INSERT INTO tb_estado VALUES (sq_estado.nextval, 1,'Bahia');

-- TB_CIDADE --
INSERT INTO tb_cidade VALUES (sq_cidade.nextval, 1,'Salvador');	
INSERT INTO tb_cidade VALUES (sq_cidade.nextval, 1,'Lauro de Freitas');

-- TB_LOGRADOURO --
INSERT INTO tb_logradouro VALUES (sq_logradouro.nextval, 1, 'Rua Pará', 'Pituba', 10);
INSERT INTO tb_logradouro VALUES (sq_logradouro.nextval, 1, 'Rua Gabriel', 'Barra', 23);
INSERT INTO tb_logradouro VALUES (sq_logradouro.nextval, 1, 'Rua Artivis', 'Armação', 10);
INSERT INTO tb_logradouro VALUES (sq_logradouro.nextval, 1, 'Av. 7', 'Armação', 7);
INSERT INTO tb_logradouro VALUES (sq_logradouro.nextval, 2, 'Rua Praia de Itapema', 'Vilas do Atlântico', 67);
INSERT INTO tb_logradouro VALUES (sq_logradouro.nextval, 2, 'Rua Ministro ACM', 'Buraquinho', 1034);
INSERT INTO tb_logradouro VALUES (sq_logradouro.nextval, 1, 'Praia da Paciência', 'Rio Vermelho', 12);
INSERT INTO tb_logradouro VALUES (sq_logradouro.nextval, 1, 'Rua Maranhão', 'Ondina', 4);
INSERT INTO tb_logradouro VALUES (sq_logradouro.nextval, 2, 'Av. Fox', 'Laranjadas', 102);
INSERT INTO tb_logradouro VALUES (sq_logradouro.nextval, 2, 'Rua J', 'Pau Miudo', 7);

-- TB_ENDERECO --
INSERT INTO tb_endereco VALUES (sq_endereco.nextval, 1, null, 1,'Apt. 2');
INSERT INTO tb_endereco VALUES (sq_endereco.nextval, 2, null, 2,'Casa A');
INSERT INTO tb_endereco VALUES (sq_endereco.nextval, 3, null, 3);
INSERT INTO tb_endereco VALUES (sq_endereco.nextval, 4, null, 4,'Lote 3');
INSERT INTO tb_endereco VALUES (sq_endereco.nextval, null, 1, 5,'Casa Z');
INSERT INTO tb_endereco VALUES (sq_endereco.nextval, null, 2, 6,'Apt. 123');
INSERT INTO tb_endereco VALUES (sq_endereco.nextval, null, 3, 7, '3 Andar');
INSERT INTO tb_endereco VALUES (sq_endereco.nextval, null, 4, 8,'Apt. 1303');
INSERT INTO tb_endereco VALUES (sq_endereco.nextval, null, 5, 9,'Apt. 1401');
INSERT INTO tb_endereco VALUES (sq_endereco.nextval, null, 6, 10,'Lote X');

-- TB_TELEFONE -- FALTA REVISAR
INSERT INTO tb_telefone VALUES (sq_telefone.nextvalue, 1, null, 71, 10000001);
INSERT INTO tb_telefone VALUES (sq_telefone.nextvalue, 1, null, 71, 12121212);
INSERT INTO tb_telefone VALUES (sq_telefone.nextvalue, 2, null, 31, 11111111);
INSERT INTO tb_telefone VALUES (sq_telefone.nextvalue, 2, null, 31, 32232323);
INSERT INTO tb_telefone VALUES (sq_telefone.nextvalue, 2, null, 31, 12111411);
INSERT INTO tb_telefone VALUES (sq_telefone.nextvalue, 3, null, 71, 22222222);
INSERT INTO tb_telefone VALUES (sq_telefone.nextvalue, 4, null, 62, 33333333);
INSERT INTO tb_telefone VALUES (sq_telefone.nextvalue, null, 1, 11, 12120007);
INSERT INTO tb_telefone VALUES (sq_telefone.nextvalue, null, 1, 12, 10021008);
INSERT INTO tb_telefone VALUES (sq_telefone.nextvalue, null, 2, 31, 20000032);
INSERT INTO tb_telefone VALUES (sq_telefone.nextvalue, null, 3, 41, 30000003);
INSERT INTO tb_telefone VALUES (sq_telefone.nextvalue, null, 4, 73, 40000004);
INSERT INTO tb_telefone VALUES (sq_telefone.nextvalue, null, 5, 19, 19743213);
INSERT INTO tb_telefone VALUES (sq_telefone.nextvalue, null, 6, 23, 97341863);
INSERT INTO tb_telefone VALUES (sq_telefone.nextvalue, null, 6, 11, 98764563);