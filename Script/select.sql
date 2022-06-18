-- SELECT * FROM TABLE --

-- PRIMEIRO SELECT --
-- o nome dos produtos que não foram comprados nos últimos XX tempo, ordenado pelo nome do produto --

select tb_produto.produto, tb_compra.dt_compra from tb_produto 
    join tb_lote on (tb_produto.id_produto = tb_lote.id_produto)
    join tb_lotecompra on (tb_lote.id_lote = tb_lotecompra.id_lote)
    join tb_compra on (tb_lotecompra.id_compra = tb_compra.id_compra)
        where tb_lote.id_produto 
            not in (select tb_lote.id_produto from tb_lote
                    join tb_produto on (tb_lote.id_produto = tb_produto.id_produto)
                    join tb_lotecompra on (tb_lotecompra.id_lote = tb_lote.id_lote)
                    join tb_compra on (tb_compra.id_compra = tb_lotecompra.id_compra)
                    where tb_compra.dt_compra between '11/04/2022 12:00:00' and '16/05/2022 12:00:00'
                    )
order by tb_produto.produto;
        
