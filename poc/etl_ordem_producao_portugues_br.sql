SELECT EMPRESA_CODIGO     empresa_que_produziu ,
       C2_FILIAL          filial_que_produziu ,
       FILIAL_NOME        nome_da_filial_que_produziu,
	   FILIAL_MUNICIPIO   cidade_da_filial_que_produziu,
	   FILIAL_UF          estado_da_filial_que_produziu ,
	   'BRASIL'           pais_da_filial_que_produziu ,
	   C2_NUM             numero_da_ordem_de_producao,
	   C2_PRODUTO         codigo_do_produto_produzido,
	   NM_PRODUTO         nome_do_produto_produzido,
	   CD_GRUPO           grupo_do_produto_produzido,
	   NM_GRUPO           nome_do_grupo_do_produto_produzido,
	   CONVERT(DATE, C2_EMISSAO, 25) data_inclusao_ordem_de_producao,
	   CONVERT(DATE, C2_DATPRF, 25)  data_da_entrega_da_ordem_de_producao,
	   DATEPART(WEEK, CONVERT(DATE, C2_DATPRF, 25)) AS semana_do_ano_da_ordem_de_producao,
	   C2_QUANT           quantidade_da_ordem_de_producao,
	   C2_QUJE            quantidade_da_ordem_de_produção_ja_produzida,
	   C2_QUANT-C2_QUJE   quantidade_da_ordem_de_producao_que_falta_produzir,
	   CASE 
	   WHEN C2_DATRF <> ' ' And C2_QUJE < C2_QUANT  THEN 'encerada.parcialmente'   
	   WHEN C2_DATRF <> ' ' And C2_QUJE >= C2_QUANT THEN 'encerrada'  
	   ELSE 'em aberto ' END AS situacao_da_ordem_de_producao ,
	   CASE 
       WHEN T1.DT_ULTIMO_APONTAMENTO = '' OR C2_DATRF <> ' ' THEN 0
       ELSE DATEDIFF(DAY, CONVERT(DATE, STUFF(STUFF(T1.DT_ULTIMO_APONTAMENTO, 5, 0, '-'), 8, 0, '-')), GETDATE())
       END AS dias_ociosidade,
	   CONVERT(DATE, T1.DT_PRIMEIRO_APONTAMENTO, 25) as data_do_primeiro_apontamento_de_producao,
	   CONVERT(DATE, T1.DT_ULTIMO_APONTAMENTO, 25) as data_do_ultimo_apontamento_de_producao
into etl_solbi_ordens_producao_big_bags 
FROM 
SC2010 SC2  
JOIN BI_CFG_FATO_EMPRESA_FILIAL SM0 ON 
    SM0.FILIAL_CODIGO = C2_FILIAL
JOIN BI_DIM_PRODUTOS PRD ON
   PRD.FILIAL_CODIGO = SUBSTRING(C2_FILIAL,1,4)
AND PRD.CD_PRODUTO = C2_PRODUTO
LEFT JOIN BI_PCP_FATO_RESUMO_APONTAMENTOS_POR_OP T1 ON 
     T1.FILIAL_CODIGO = C2_FILIAL
AND  T1.ORDEM_PRODUCAO = C2_NUM+C2_ITEM+C2_SEQUEN	 
WHERE 
    C2_FILIAL >= '010201'
AND C2_EMISSAO >= '20210101'
AND C2_PRODUTO >= '04'
AND PRD.CD_PRODUTO = C2_PRODUTO
AND C2_TPOP = 'F'
AND SC2.D_E_L_E_T_ <> '*'



