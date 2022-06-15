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
INSERT INTO tb_empregado VALUES (sq_empregado.nextval, '519.920.221-94', 'MariahBernardes', '18/03/1981', 'F', 'mariah@julianacaran.com.br', '36.529.019-1', '25/04/2013');
INSERT INTO tb_empregado VALUES (sq_empregado.nextval, '480.899.460-70', 'Renan Nogueira', '01/01/1953', 'M', 'renan_b@inepar.com.br', '41.498.526-6', '31/03/1998');
INSERT INTO tb_empregado VALUES (sq_empregado.nextval, '234.694.920-72', 'Roberto Carlos', '10/09/1953', 'M', 'betinho@globo.com.br', '12.422.556-9', '01/09/2001');

-- TB_FORNECEDOR --

INSERT INTO tb_fornecedor (sq_fornecedor.nextval, 'Amazon', '15.436.940/0001-03');
INSERT INTO tb_fornecedor (sq_fornecedor.nextval, 'Atacadão Atakarejo', '73.849.952/0001-58');
INSERT INTO tb_fornecedor (sq_fornecedor.nextval, 'Lojas Amaricanas S.A', '33.014.556/0001-96');
INSERT INTO tb_fornecedor (sq_fornecedor.nextval, 'Pfizer', '46.070.868/0019-983');
INSERT INTO tb_fornecedor (sq_fornecedor.nextval, 'Johnson & Johnson', '54.516.661/0002-84');
