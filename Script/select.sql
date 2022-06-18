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
                    where tb_compra.dt_compra between '18/03/2022 12:00:00' and '11/04/2022 12:00:00'
                    )
order by tb_produto.produto;
------------------------------------------------------------------------------------------------------

-- SEGUNDO SELECT --
-- apresentar o total de valor gasto por cliente e pet ao Longo de um determinado intervalo de tempo, 
-- ordenado pelo nome do cliente e nome do pet

-- PARA PRODUTOS -- 
select tb_cliente.nome as cliente, tb_pet.nome as pet, sum(tb_produto.preco_venda*tb_lotecompra.unidades) as total_produtos_R$ from tb_pet
        join tb_cliente on(tb_cliente.id_cliente = tb_pet.id_cliente)
        join tb_compra on(tb_cliente.id_cliente = tb_compra.id_cliente)
        join tb_lotecompra on(tb_compra.id_compra = tb_lotecompra.id_compra)
        join tb_lote on(tb_lotecompra.id_lote = tb_lote.id_lote)
        join tb_produto on(tb_lote.id_produto = tb_produto.id_produto)
        where tb_compra.dt_compra between '01/01/2022 12:00:00' and '30/06/2022 12:00:00'
group by 
    tb_cliente.nome, tb_pet.nome;

-- PARA MEDICAMENTOS --   
select tb_cliente.nome as cliente, tb_pet.nome as pet, sum(tb_medicamento.preco_venda*tb_lotecompra.unidades) as total_medicamentos_R$ from tb_pet
        join tb_cliente on(tb_cliente.id_cliente = tb_pet.id_cliente)
        join tb_compra on(tb_cliente.id_cliente = tb_compra.id_cliente)
        join tb_lotecompra on(tb_compra.id_compra = tb_lotecompra.id_compra)
        join tb_lote on(tb_lotecompra.id_lote = tb_lote.id_lote)
        join tb_medicamento on(tb_lote.id_medicamento = tb_medicamento.id_medicamento)
        where tb_compra.dt_compra between '01/01/2022 12:00:00' and '30/06/2022 12:00:00'
group by 
    tb_cliente.nome, tb_pet.nome;

-- PARA CONSULTAS E SERVIÇOS --
select tb_cliente.nome as cliente, tb_pet.nome as pet, sum(tb_consulta.preco+ tb_servicos.preco) as total_serviço_consulta_R$ from tb_consulta 
        join tb_pet on (tb_consulta.id_pet = tb_pet.id_pet) 
        join tb_cliente on (tb_pet.id_cliente = tb_cliente.id_cliente)
        join tb_procedimento on (tb_procedimento.id_pet = tb_pet.id_pet)
        join tb_servicos on (tb_procedimento.id_servicos =  tb_servicos.id_servicos)
        
        where tb_consulta.dt_termino between '01/01/2022 12:00:00' and '30/06/2022 12:00:00'
      group by 
      tb_cliente.nome, tb_pet.nome;

-- PARA CONSULTAS, SERVIÇOS E PRODUTOS --
select tb_cliente.nome, tb_pet.nome, sum(tb_consulta.preco+ tb_servicos.preco+tb_produto.preco_venda) as total_gasto_R$ from tb_consulta 
        join tb_pet on (tb_consulta.id_pet = tb_pet.id_pet) 
        join tb_cliente on (tb_pet.id_cliente = tb_cliente.id_cliente)
        join tb_procedimento on (tb_procedimento.id_pet = tb_pet.id_pet)
        join tb_servicos on (tb_procedimento.id_servicos =  tb_servicos.id_servicos)
        join tb_compra on (tb_cliente.id_cliente = tb_compra.id_cliente)
        join tb_lotecompra on (tb_lotecompra.id_compra = tb_compra.id_compra)
        join tb_lote on (tb_lotecompra.id_lote = tb_lote.id_lote)
        join tb_produto on (tb_lote.id_produto = tb_produto.id_produto)
        --join tb_medicamento on (tb_lote.id_medicamento = tb_medicamento.id_medicamento)
        where tb_consulta.dt_termino between '01/01/2022 12:00:00' and '30/6/2022 12:00:00' and tb_compra.dt_compra between '01/01/2022 12:00:00' and '30/6/2022 12:00:00'
      group by 
      tb_cliente.nome, tb_pet.nome;

-- PARA CONSULTAS, SERVIÇOS E MEDICAMENTOS --
select tb_cliente.nome, tb_pet.nome, sum(tb_consulta.preco+ tb_servicos.preco+tb_medicamento.preco_venda) as total_gasto_R$ from tb_consulta 
        join tb_pet on (tb_consulta.id_pet = tb_pet.id_pet) 
        join tb_cliente on (tb_pet.id_cliente = tb_cliente.id_cliente)
        join tb_procedimento on (tb_procedimento.id_pet = tb_pet.id_pet)
        join tb_servicos on (tb_procedimento.id_servicos =  tb_servicos.id_servicos)
        join tb_compra on (tb_cliente.id_cliente = tb_compra.id_cliente)
        join tb_lotecompra on (tb_lotecompra.id_compra = tb_compra.id_compra)
        join tb_lote on (tb_lotecompra.id_lote = tb_lote.id_lote)
        --join tb_produto on (tb_lote.id_produto = tb_produto.id_produto)
        join tb_medicamento on (tb_lote.id_medicamento = tb_medicamento.id_medicamento)
        where tb_consulta.dt_termino between '01/01/2022 12:00:00' and '30/6/2022 12:00:00' and tb_compra.dt_compra between '01/01/2022 12:00:00' and '30/6/2022 12:00:00'
      group by 
      tb_cliente.nome, tb_pet.nome;
-----------------------------------------------------------------------------------------------------------------------------------------------------

-- TERCEIRO SELECT --
-- apresentar para cada médico , os valores recebidos nas consultas/procedimentos ao longo de determinado ano --

-- GANHOS NO PRIMEIRO SEMESTRE --
select tb_empregado.nome, sum(tb_consulta.preco) as primeiro_sem_R$ from tb_consulta
    join tb_medico on (tb_consulta.crmv = tb_medico.crmv)
    join tb_empregado on(tb_medico.id_empregado = tb_empregado.id_empregado)
where tb_consulta.dt_termino between '01/01/2022 00:00:00' and '30/06/2022 23:59:59'
group by
    tb_empregado.nome, tb_medico.crmv;

-- GANHOS NO SEGUNDO SEMESTRE --
select tb_empregado.nome, sum(tb_consulta.preco) as segundo_sem_R$ from tb_consulta
    join tb_medico on (tb_consulta.crmv = tb_medico.crmv)
    join tb_empregado on(tb_medico.id_empregado = tb_empregado.id_empregado)
where tb_consulta.dt_termino between '01/07/2022 00:00:00' and '31/12/2022 23:59:59'
group by
    tb_empregado.nome, tb_medico.crmv;
 
-- GANHOS DO ANO INTEIRO --
select tb_empregado.nome, sum(tb_consulta.preco) as total_anual_R$ from tb_consulta
    join tb_medico on (tb_consulta.crmv = tb_medico.crmv)
    join tb_empregado on(tb_medico.id_empregado = tb_empregado.id_empregado)
where tb_consulta.dt_termino between '01/01/2022 00:00:00' and '31/12/2022 23:59:59'
group by
    tb_empregado.nome, tb_medico.crmv;
--------------------------------------------------------------------------------------------------------------
