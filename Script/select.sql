-- SELECT * FROM TABLE --

-- PRIMEIRO SELECT
-- Verificar quantas compras foram realizadas por clientes nos últimos 3 meses, aqueles que
-- tiveram mais de 3 compras por mês, terão seus dados salvos e será retornado quantas compras
-- foram feitas em cada mês e qual foi o valor de cada compra.

select count(compra.ID_COMPRA) as quantidade_total_compras from tb_compra compra where compra.DT_COMPRA > '15/03/2022 00:00:00';
        
select cliente.nome, count(compra.id_compra) as compras_feitas, sum(produto.preco_venda) as valor_gasto_total from tb_cliente cliente 
    join tb_compra compra on compra.id_cliente = cliente.id_cliente
    join tb_lotecompra lotecompra on compra.id_compra = lotecompra.id_compra
    join tb_lote lote on lote.id_lote = lotecompra.id_lote
    join tb_produto produto on lote.id_produto = produto.id_produto
        group by cliente.nome
            having count(compra.id_compra) > 3;
        
select cliente.nome, produto.nome, produto.preco_venda from tb_cliente cliente 
    join tb_compra compra on compra.id_cliente = cliente.id_cliente
    join tb_lotecompra lotecompra on compra.id_compra = lotecompra.id_compra
    join tb_lote lote on lote.id_lote = lotecompra.id_lote
    join tb_produto produto on lote.id_produto = produto.id_produto
        where cliente.nome = (select distinct(cliente.nome) from tb_cliente cliente
                                join tb_compra compra on compra.id_cliente = cliente.id_cliente 
                                join tb_lotecompra lotecompra on compra.id_compra = lotecompra.id_compra 
                                join tb_lote lote on lote.id_lote = lotecompra.id_lote 
                                join tb_produto produto on lote.id_produto = produto.id_produto 
                                    group by cliente.nome
                                        having count(compra.id_compra) > 3 );



-- SEGUNDO SELECT
-- A partir de certo medicamento prescrito, dizer qual foi a quantidade prescrita para quais animais
-- foram prescritos esses medicamentos, quem são donos deles e que médico
-- prescreveu os medicamentos.



select tb_medicamento.nome, tb_lotecompra.unidades, tb_pet.nome, tb_cliente.nome as dono, tb_empregado.nome as medico from tb_medicamento
    join tb_lote on (tb_medicamento.id_medicamento = tb_lote.id_medicamento)
    join tb_lotecompra on (tb_lotecompra.id_lote = tb_lote.id_lote)
    join tb_compra on (tb_lotecompra.id_compra = tb_compra.id_compra)
    join tb_cliente on (tb_cliente.id_cliente = tb_compra.id_cliente)
    join tb_pet on (tb_pet.id_cliente = tb_cliente.id_cliente)
    join tb_empregado on (tb_compra.id_empregado = tb_empregado.id_empregado)
    join tb_medico on (tb_medico.id_empregado = tb_empregado.id_empregado)
        where tb_medicamento.nome = 'Ácido acetilsalicílico '


-- TERCEIRO SELECT
-- Identificar um determinado produto comprado em um determinado dia pelo Cliente X, o lote
-- que ele está vinculado e o valor pago por ele e sua validade.

select tb_cliente.nome, tb_produto.nome, tb_produto.preco_venda, tb_compra.dt_compra, tb_lotecompra.id_lotecompra, tb_lote.validade from tb_produto
    join tb_lote on (tb_produto.id_produto = tb_lote.id_produto)
    join tb_lotecompra on (tb_lotecompra.id_lote = tb_lote.id_lote)
    join tb_compra on (tb_lotecompra.id_compra = tb_compra.id_compra)
    join tb_cliente on (tb_cliente.id_cliente = tb_compra.id_cliente)
        where tb_compra.dt_compra = '16/05/2022 17:37:05' and tb_cliente.nome = 'Luiza Baptista' 
        
