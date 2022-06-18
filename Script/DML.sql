-- INSERINDO VALORES --

-- TB_ CLIENTE --
INSERT INTO tb_cliente VALUES (sq_cliente.nextval, '911.880.973-18', 'Rebeca Aline', '08/06/1998', 'F', 'rebeca_viana@valedesign.com.br', '43.920.175-5');
INSERT INTO tb_cliente VALUES (sq_cliente.nextval, '993.936.888-77', 'Luiza Baptista', '14/06/1945', 'F', 'luiza_joana@vivo.com.br', '429.032.711-8');
INSERT INTO tb_cliente VALUES (sq_cliente.nextval, '752.287.170-05', 'Tim Maia', '01/02/1963', 'M', 'francisco@dye.com.br', '21.202.611-2');
INSERT INTO tb_cliente VALUES (sq_cliente.nextval, '983.311.522-55', 'Elias Rosa', '19/02/1964', 'M', 'elias@solution.com.br', '43.073.852-3');
INSERT INTO tb_cliente VALUES (sq_cliente.nextval, '123.987.522-87', 'Peter Parker', '04/05/2002', 'M', 'peter@park.com.br', '01.073.852-3');
INSERT INTO tb_cliente VALUES (sq_cliente.nextval, '321.876.522-09', 'Steve Rogers', '04/07/1918', 'M', 'cap@avengers.com.br', '43.021.852-3');
INSERT INTO tb_cliente VALUES (sq_cliente.nextval, '231.654.522-12', 'Bruce Banner', '19/02/1970', 'M', 'hulk@verdao.com.br', '43.033.852-3');
INSERT INTO tb_cliente VALUES (sq_cliente.nextval, '234.543.522-55', 'Cavaleiro das Trevas', '19/02/1992', 'M', 'bat@justice.com.br', '93.073.852-3');
INSERT INTO tb_cliente VALUES (sq_cliente.nextval, '432.311.876-54', 'Robert Pattinson', '19/02/1977', 'M', 'robert@crepusculo.com.br', '43.073.402-3');
INSERT INTO tb_cliente VALUES (sq_cliente.nextval, '543.543.522-76', 'Wolverine', '25/06/1914', 'M', 'logan@xmen.com.br', '43.073.852-2');
INSERT INTO tb_cliente VALUES (sq_cliente.nextval, '345.654.522-87', 'Will Smith', '19/02/1978', 'M', 'im.will@solution.com.br', '43.073.852-1');

-- TB_ EMPREGADO --
INSERT INTO tb_empregado VALUES (sq_empregado.nextval, '406.511.938-34', 'Bianca Rosa', '23/02/1965', 'F', 'bianca_rosa_assis@petfeliz.com.br', '49.319.934-2', '12/03/1975', 'Médico');
INSERT INTO tb_empregado VALUES (sq_empregado.nextval, '222.444.555-01', 'Silvio Santos', '10/09/1800', 'M', 'santinho@petfeliz.com.br', '92.422.345-9', '01/09/2002', 'Vendedor');
INSERT INTO tb_empregado VALUES (sq_empregado.nextval, '290-876-921-01', 'Francisco Araujo', '23/02/1965', 'M', 'chicozin@petfeliz.com.br', '42.193.934-6', '21/05/2001', 'Médico');
INSERT INTO tb_empregado VALUES (sq_empregado.nextval, '519.920.221-94', 'Mariah Bernardes', '18/03/1981', 'F', 'mariah@petfeliz.com.br', '36.529.019-1', '25/04/2013', 'Atendente');
INSERT INTO tb_empregado VALUES (sq_empregado.nextval, '480.899.460-70', 'Renan Nogueira', '01/01/1953', 'M', 'renan_b@petfeliz.com.br', '41.498.526-6', '31/03/1998', 'Gerente');
INSERT INTO tb_empregado VALUES (sq_empregado.nextval, '234.694.920-72', 'Roberto Carlos', '10/09/1953', 'M', 'betinho@petfeliz.com.br', '12.422.556-9', '01/09/2001', 'Vendedor');
INSERT INTO tb_empregado VALUES (sq_empregado.nextval, '296.543.760-94', 'Tony Stark', '29/05/1970', 'M', 'tony@petfeliz.com.br', '56.431.987-9', '01/09/2001', 'Caixa');

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
INSERT INTO tb_endereco VALUES (sq_endereco.nextval, 3, null, 3, NULL);
INSERT INTO tb_endereco VALUES (sq_endereco.nextval, 4, null, 4,'Lote 3');
INSERT INTO tb_endereco VALUES (sq_endereco.nextval, null, 1, 5,'Casa Z');
INSERT INTO tb_endereco VALUES (sq_endereco.nextval, null, 2, 6,'Apt. 123');
INSERT INTO tb_endereco VALUES (sq_endereco.nextval, null, 3, 7, '3 Andar');
INSERT INTO tb_endereco VALUES (sq_endereco.nextval, null, 4, 8,'Apt. 1303');
INSERT INTO tb_endereco VALUES (sq_endereco.nextval, null, 5, 9,'Apt. 1401');
INSERT INTO tb_endereco VALUES (sq_endereco.nextval, null, 6, 10,'Lote X');

-- TB_TELEFONE -- FALTA REVISAR
INSERT INTO tb_telefone VALUES (sq_telefone.nextval, 1, null, 71, 10000001);
INSERT INTO tb_telefone VALUES (sq_telefone.nextval, 1, null, 71, 12121212);
INSERT INTO tb_telefone VALUES (sq_telefone.nextval, 2, null, 31, 11111111);
INSERT INTO tb_telefone VALUES (sq_telefone.nextval, 2, null, 31, 32232323);
INSERT INTO tb_telefone VALUES (sq_telefone.nextval, 2, null, 31, 12111411);
INSERT INTO tb_telefone VALUES (sq_telefone.nextval, 3, null, 71, 22222222);
INSERT INTO tb_telefone VALUES (sq_telefone.nextval, 4, null, 62, 33333333);
INSERT INTO tb_telefone VALUES (sq_telefone.nextval, null, 1, 11, 12120007);
INSERT INTO tb_telefone VALUES (sq_telefone.nextval, null, 1, 12, 10021008);
INSERT INTO tb_telefone VALUES (sq_telefone.nextval, null, 2, 31, 20000032);
INSERT INTO tb_telefone VALUES (sq_telefone.nextval, null, 3, 41, 30000003);
INSERT INTO tb_telefone VALUES (sq_telefone.nextval, null, 4, 73, 40000004);
INSERT INTO tb_telefone VALUES (sq_telefone.nextval, null, 5, 19, 19743213);
INSERT INTO tb_telefone VALUES (sq_telefone.nextval, null, 6, 23, 97341863);
INSERT INTO tb_telefone VALUES (sq_telefone.nextval, null, 6, 11, 98764563);

-- TB_ESPECIE --
INSERT INTO tb_especie VALUES (sq_especie.nextval, 'Gato');        
INSERT INTO tb_especie VALUES (sq_especie.nextval, 'Cachorro');     

-- TB_RACA -- TOTAL: [9]
INSERT INTO tb_raca VALUES (sq_raca.nextval, 1, 'Pitbull');
INSERT INTO tb_raca VALUES (sq_raca.nextval, 1, 'Labrador');
INSERT INTO tb_raca VALUES (sq_raca.nextval, 1, 'Poodle');
INSERT INTO tb_raca VALUES (sq_raca.nextval, 1, 'Buldogue');
INSERT INTO tb_raca VALUES (sq_raca.nextval, 1, 'Pastor-alemão');
INSERT INTO tb_raca VALUES (sq_raca.nextval, 1, 'Rottweiler');
INSERT INTO tb_raca VALUES (sq_raca.nextval, 2, 'Bombaim');  
INSERT INTO tb_raca VALUES (sq_raca.nextval, 2, 'Maine Coon');
INSERT INTO tb_raca VALUES (sq_raca.nextval, 2, 'Siamês'); 
INSERT INTO tb_raca VALUES (sq_raca.nextval, 1, 'SRD');
INSERT INTO tb_raca VALUES (sq_raca.nextval, 2, 'SRD');

-- TB_PET -- TOTAL: [5]
INSERT INTO tb_pet VALUES (sq_pet.nextval, 1, 1, 'Batatona', 'F', '10/05/2019', 'A-'); 
INSERT INTO tb_pet VALUES (sq_pet.nextval, 1, 7, 'Breu', 'M', '01/01/2020', 'B+');
INSERT INTO tb_pet VALUES (sq_pet.nextval, 2, 5, 'Danka', 'F', '17/02/2012', 'O+');
INSERT INTO tb_pet VALUES (sq_pet.nextval, 3, 9, 'Emerson', 'M', '01/05/2018', 'A+');
INSERT INTO tb_pet VALUES (sq_pet.nextval, 4, 3, 'Berlindinha', 'F', '29/01/2003', 'AB-');

-- TB_MEDIDAS_ANIMAL --
INSERT INTO tb_medidas_animal VALUES (sq_medidas.nextval, 5, '23/12/2005', 15.7, 24.6, 35.7);
INSERT INTO tb_medidas_animal VALUES (sq_medidas.nextval, 3, '24/10/2019', 24.5, 80.9, 142.4);
INSERT INTO tb_medidas_animal VALUES (sq_medidas.nextval, 1, '14/06/2020', 15.5, 50.12, 110.1);
INSERT INTO tb_medidas_animal VALUES (sq_medidas.nextval, 5, '22/10/2020', 16.3, 25.6, 35.7);
INSERT INTO tb_medidas_animal VALUES (sq_medidas.nextval, 4, '18/11/2020', 3.8, 23.6, 86.2);
INSERT INTO tb_medidas_animal VALUES (sq_medidas.nextval, 2, '18/09/2021', 5.5, 12.4, 32.5);
INSERT INTO tb_medidas_animal VALUES (sq_medidas.nextval, 1, '17/11/2021', 16.5, 51.22, 110.9);
INSERT INTO tb_medidas_animal VALUES (sq_medidas.nextval, 5, '29/12/2022', 12.3, 25.6, 35.6);

-- TB_SERVICOS --
INSERT INTO tb_servicos VALUES (sq_servicos.nextval, 'Cortar Unha', 19.99);
INSERT INTO tb_servicos VALUES (sq_servicos.nextval, 'Tosa', 99.49);
INSERT INTO tb_servicos VALUES (sq_servicos.nextval, 'Banho', 79.99);
INSERT INTO tb_servicos VALUES (sq_servicos.nextval, 'Escovar os dentes', 29.99);

-- TB_PROCEDIMENTO --
INSERT INTO tb_procedimento VALUES (sq_procedimento.nextval, 1, 2, '11/12/2021 13:21:43', '11/12/2021 14:26:40');
INSERT INTO tb_procedimento VALUES (sq_procedimento.nextval, 3, 4, '12/12/2021 16:43:43', '12/12/2021 17:34:12');
INSERT INTO tb_procedimento VALUES (sq_procedimento.nextval, 4, 3, '12/03/2022 20:23:43', '12/03/2022 21:30:43');
INSERT INTO tb_procedimento VALUES (sq_procedimento.nextval, 5, 2, '01/04/2022 07:31:00', '01/04/2022 09:45:00');
INSERT INTO tb_procedimento VALUES (sq_procedimento.nextval, 3, 3, '05/05/2022 19:12:03', '05/05/2022 20:21:03');
INSERT INTO tb_procedimento VALUES (sq_procedimento.nextval, 2, 1, '15/05/2022 18:23:01', '15/05/2022 19:10:10');
INSERT INTO tb_procedimento VALUES (sq_procedimento.nextval, 5, 1, '29/12/2022 08:23:43', '29/12/2022 08:56:57');

-- TB_CONSULTA -- 51924  -  12247
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 51924, 5, 1549.99, '10/01/2022 07:31:00', '10/01/2022 08:22:00');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 12247, 5, 542.99, '12/02/2022 06:12:32', '12/02/2022 07:29:10');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 12247, 5, 542.99, '13/03/2022 06:12:32', '12/03/2022 07:29:10');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 12247, 5, 542.99, '01/06/2022 06:12:32', '12/06/2022 07:29:10');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 12247, 5, 542.99, '14/07/2022 06:12:32', '12/07/2022 07:29:10');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 12247, 5, 542.99, '12/08/2022 06:12:32', '12/08/2022 07:29:10');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 12247, 5, 542.99, '12/09/2022 06:12:32', '12/09/2022 07:29:10');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 51924, 1, 320, '12/01/2021 18:48:32', '12/01/2021 19:29:20');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 12247, 1, 320, '12/02/2021 18:48:32', '12/02/2021 19:29:20');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 51924, 1, 320, '12/04/2021 18:48:32', '12/04/2021 19:29:20');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 51924, 1, 320, '12/06/2021 18:48:32', '12/06/2021 19:29:20');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 12247, 1, 320, '12/07/2021 18:48:32', '12/07/2021 19:29:20');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 12247, 1, 320, '12/11/2021 18:48:32', '12/11/2021 19:29:20');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 51924, 1, 320, '12/12/2021 18:48:32', '12/12/2021 19:29:20');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 51924, 2, 265, '05/05/2022 07:45:34', '05/05/2022 08:22:00');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 12247, 2, 265, '05/07/2022 07:45:34', '05/07/2022 08:22:00');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 12247, 2, 265, '05/01/2022 07:45:34', '05/01/2022 08:22:00');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 51924, 2, 265, '11/02/2022 07:45:34', '11/02/2022 08:22:00');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 12247, 2, 265, '05/12/2022 07:45:34', '05/12/2022 08:22:00');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 51924, 2, 265, '05/02/2022 07:45:34', '05/02/2022 08:22:00');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 12247, 4, 650.50, '12/03/2022 12:11:01', '12/03/2022 13:02:02');
INSERT INTO tb_consulta VALUES (sq_consulta.nextval, 12247, 3, 159.29, '01/02/2022 07:31:00', '01/02/2022 08:22:00');

-- TB_COMPRA --
INSERT INTO tb_compra VALUES (sq_compra.nextval, 3, 1, '18/03/2022 11:41:12');
INSERT INTO tb_compra VALUES (sq_compra.nextval, 1, 3, '20/03/2022 10:15:32');
INSERT INTO tb_compra VALUES (sq_compra.nextval, 2, 2, '12/06/2022 14:42:54');
INSERT INTO tb_compra VALUES (sq_compra.nextval, 2, 1, '05/05/2022 16:56:43');
INSERT INTO tb_compra VALUES (sq_compra.nextval, 1, 3, '23/04/2022 13:36:12');
INSERT INTO tb_compra VALUES (sq_compra.nextval, 3, 4, '11/04/2022 20:13:01');
INSERT INTO tb_compra VALUES (sq_compra.nextval, 2, 3, '16/05/2022 17:37:05');
INSERT INTO tb_compra VALUES (sq_compra.nextval, 2, 4, '02/04/2022 12:52:29');
INSERT INTO tb_compra VALUES (sq_compra.nextval, 3, 1, '19/03/2022 13:41:12');
INSERT INTO tb_compra VALUES (sq_compra.nextval, 1, 3, '21/03/2022 12:15:32');
INSERT INTO tb_compra VALUES (sq_compra.nextval, 2, 2, '13/06/2022 17:42:54');
INSERT INTO tb_compra VALUES (sq_compra.nextval, 2, 1, '15/05/2022 17:56:43');
INSERT INTO tb_compra VALUES (sq_compra.nextval, 1, 3, '21/04/2022 14:36:12');
INSERT INTO tb_compra VALUES (sq_compra.nextval, 3, 4, '15/04/2022 21:13:01');
INSERT INTO tb_compra VALUES (sq_compra.nextval, 2, 3, '19/05/2022 16:37:05');
INSERT INTO tb_compra VALUES (sq_compra.nextval, 2, 4, '12/04/2022 11:52:29');

-- TB_LOTE --
INSERT INTO tb_lote VALUES (sq_lote.nextval, 1, NULL, 2, '10/01/2022 08:23:55', 50, '20/12/2022', 1000);
INSERT INTO tb_lote VALUES (sq_lote.nextval, 2, NULL, 1, '27/02/2022 07:34:14', 15, '04/07/2022', 1500);
INSERT INTO tb_lote VALUES (sq_lote.nextval, 5, NULL, 4, '12/12/2021 10:51:52', 35, '15/06/2023', 950);
INSERT INTO tb_lote VALUES (sq_lote.nextval, 4, NULL, 3, '16/01/2022 11:54:23', 50, '31/10/2022', 830);
INSERT INTO tb_lote VALUES (sq_lote.nextval, 6, NULL, 2, '10/01/2022 14:43:12', 40, '07/03/2023', 760);
INSERT INTO tb_lote VALUES (sq_lote.nextval, 3, NULL, 3, '10/01/2022 08:27:45', 20, '20/07/2022', 1100);
INSERT INTO tb_lote VALUES (sq_lote.nextval, NULL, 1, 4, '19/01/2021 11:54:23', 100, '01/01/2050', 814.99);
INSERT INTO tb_lote VALUES (sq_lote.nextval, NULL, 2, 4, '02/01/2021 15:43:12', 85, '01/01/2050', 984.12);
INSERT INTO tb_lote VALUES (sq_lote.nextval, NULL, 3, 5, '19/06/2021 05:27:45', 250, '01/01/2050', 5902.32);

-- TB_LOTECOMPRA -- 
INSERT INTO tb_lotecompra VALUES (sq_lotecompra.nextval, 1, 3, 1);
INSERT INTO tb_lotecompra VALUES (sq_lotecompra.nextval, 3, 1, 3);
INSERT INTO tb_lotecompra VALUES (sq_lotecompra.nextval, 4, 4, 1);
INSERT INTO tb_lotecompra VALUES (sq_lotecompra.nextval, 5, 6, 2);
INSERT INTO tb_lotecompra VALUES (sq_lotecompra.nextval, 6, 5, 1);
INSERT INTO tb_lotecompra VALUES (sq_lotecompra.nextval, 7, 2, 1);
INSERT INTO tb_lotecompra VALUES (sq_lotecompra.nextval, 8, 5, 1);
INSERT INTO tb_lotecompra VALUES (sq_lotecompra.nextval, 12, 9, 5);
INSERT INTO tb_lotecompra VALUES (sq_lotecompra.nextval, 13, 7, 3);
INSERT INTO tb_lotecompra VALUES (sq_lotecompra.nextval, 15, 8, 3);
INSERT INTO tb_lotecompra VALUES (sq_lotecompra.nextval, 11, 4, 2);
INSERT INTO tb_lotecompra VALUES (sq_lotecompra.nextval, 9, 3, 3);
INSERT INTO tb_lotecompra VALUES (sq_lotecompra.nextval, 2, 1, 1);
INSERT INTO tb_lotecompra VALUES (sq_lotecompra.nextval, 10, 7, 2);
INSERT INTO tb_lotecompra VALUES (sq_lotecompra.nextval, 14, 5, 1);
INSERT INTO tb_lotecompra VALUES (sq_lotecompra.nextval, 16, 2, 2);
