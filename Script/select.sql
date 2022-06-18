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
-------------------------------------------------------------------------------------------------------
-- SEGUNDO SELECT --
-- apresentar o total de valor gasto por cliente e pet ao Longo de um determinado intervalo de tempo, 
-- ordenado pelo nome do cliente e nome do pet

-------------------------------------------------------------------------------------------------------
-- tentativa da 3 - ta com duas consultas entao ta meio erradao --
select tb_empregado.nome, sum(tb_consulta.preco) as primeiro_sem from tb_consulta
    join tb_medico on (tb_consulta.crmv = tb_medico.crmv)
    join tb_empregado on(tb_medico.id_empregado = tb_empregado.id_empregado)
where tb_consulta.dt_termino between '01/01/2022 00:00:01' and '01/06/2022 23:59:59'
group by
    tb_empregado.nome, tb_medico.crmv
join select tb_empregado.nome, sum(tb_consulta.preco) as segundo_sem from tb_consulta
    join tb_medico on (tb_consulta.crmv = tb_medico.crmv)
    join tb_empregado on(tb_medico.id_empregado = tb_empregado.id_empregado)
where tb_consulta.dt_termino between '01/06/2022 12:00:00' and '31/12/2022 12:00:00'
group by
    tb_empregado.nome, tb_medico.crmv;
---------------------------------------------------------------------------------------
