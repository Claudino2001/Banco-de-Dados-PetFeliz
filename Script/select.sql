-- SELECT * FROM TABLE --

-- PRIMEIRO SELECT
-- Verificar quantas compras foram realizadas por clientes nos últimos 3 meses, aqueles que
-- tiveram mais de 3 compras por mês, terão seus dados salvos e será retornado quantas compras
-- foram feitas em cada mês e qual foi o valor de cada compra.

select count(compra.ID_COMPRA) as quantidade_total_compras from tb_compra compra where compra.DT_COMPRA > '15/03/2022 00:00:00';
        
select cliente.nome, count(compra.id_compra)as compras_feitas from tb_cliente cliente 
    join tb_compra compra on compra.id_cliente = cliente.id_cliente
    join tb_lotecompra lotecompra on compra.id_compra = lotecompra.id_compra
    join tb_lote lote on lote.id_lote = lotecompra.id_lote
    
        group by cliente.nome
            having count(compra.id_compra) > 3;



-- SEGUNDO SELECT
-- Que medicamentos foram prescritos, qual foi a quantidade prescrita, para quais cachorros
-- foram prescritos esses medicamentos, que são donos desses cachorros e que médico
-- prescreveu os medicamentos.




-- TERCEIRO SELECT
-- Identificar um determinado produto comprado em um determinado dia pelo Cliente X, o lote
-- que ele está vinculado e o valor pago por ele e sua validade.

select tb_produto.nome, tb_lotecompra.id_lotecompra, tb_compra.dt_compra, tb_cliente.nome, tb_produto.preco_venda, tb_lote.validade from tb_produto
    join tb_lote on (produto.id_produto = lote.id_produto)
    join tb_lotecompra on (tb_lotecompra.id_lote = lote.id_lote)
    join compra on (tb_lotecompra.id_compra = compra.id_compra)
    join cliente on (tb_cliente.id_cliente = tb_compra.id_cliente)
        where tb_compra.dt_compra = 'XX/YY/ZZZZ' and tb_cliente.nome = 'Claudinho'
