#Include "Totvs.ch"
#include "topconn.ch"

// Apenas para Registrar no RPO
User Function AETL001 
Return

//---------------------------------------------------------------------------------------------
/*/{Protheus.doc} AREST001J
Processa como JOB a consulta de Produtos para Buscar a Empresa Correta pelo CNPJ ..
@author Alessandro Arnold
@since 09/2024
/*/
//---------------------------------------------------------------------------------------------
User Function AETL001J(sDataTime)

Local oJsonRet := JsonObject():New()

Local cQuery     := ''
Local jRegistros := JsonObject():New()
Local aRegistros := {}
Local aEstrutura := {} //dbStruct()
Local nA 

// Não dá para fazer um Select * pois o TOPCONNECT MUDA OS CAMPOS DATATIME DE CONTROLE

cQuery += " SELECT uuid,"
cQuery += " sale_or_product_return_movement_type, branch_that_sold_the_product, name_of_the_branch_that_sold_the_product, expected_delivery_date, sale_issue_date, "
cQuery += " accounting_date, sales_invoice_number, exit_series, economic_group, economic_group_name, "
cQuery += " client_who_bought_the_product, client_store, client_name, client_city, client_state, "
cQuery += " client_country_code, client_country_name, sold_product, sold_product_name, sold_product_type, "
cQuery += " sold_product_type_name, product_group, product_group_name, quantity_sold, unit_price, "
cQuery += " total_value, ipi_base, ipi_rate, ipi_value, icm_base, "
cQuery += " icm_rate, icm_value, cofins_base, cofins_rate, cofins_value, "
cQuery += " pis_base, pis_rate, pis_value, freight_value, insurance_value, "
cQuery += " cost, sales_order, sales_order_item, TES, CFOP, "
cQuery += " cfop_text, tes_generates_duplicate, tes_moves_stock, stock_account, stock_account_name, "
cQuery += " revenue_account, revenue_account_name, seller_01, seller_01_name, seller_02, "
cQuery += " seller_02_name, seller_03, seller_03_name, seller_04, seller_04_name, "
cQuery += " seller_05, seller_05_name, gross_weight, net_weight, bi_conference_ok, "
cQuery += " intercompany_sale, CNPJ, synthetic_group_code, synthetic_group_name, analytical_group_code, "
cQuery += " analytical_group_name, currency_code, currency_name, theoretical_unit_weight, theoretical_weight_in_kilos, "
cQuery += " rate, "
cQuery += "     CONVERT(VARCHAR(19), insertion_date_utc, 120) AS insertion_date_utc "
cQuery += " from datamart_sales_en " 
cQuery += " where " 
cQuery += " insertion_date_utc >= '"+sDataTime+"'"
conout(cQuery)

If select("TMP_SALES") <> 0
   dbSelectArea("TMP_SALES")
   DbCloseArea()
Endif

cQuery := ChangeQuery(cQuery)
TCQUERY cQuery NEW ALIAS "TMP_SALES"

dbSelectArea("TMP_SALES")
aEstrutura := dbStruct()


aRegistros := {}
aItem    := {}

Do While !Eof()


    jRegistros := JsonObject():New()
    For nA := 1 To(Len(aEstrutura))
        xCampo           := LOWER(aEstrutura[nA][1])
        xConteudo        := FieldGet(nA)    
        jRegistros[xCampo]  := xConteudo  //TMP_SALES->sale_or_product_return_movement_type              // Filial do Sistema
    Next    
    Aadd(aRegistros, jRegistros)

    DbSelectArea('TMP_SALES')
    DbSkip()

Enddo

oJsonRet['records'] := aRegistros

DbSelectArea('TMP_SALES')
DbCloseArea()

//RpcClearEnv()

Return oJsonRet


User Function AETL001Teste()

cRet := U_AETL001J('2024-09-15')
CjSON := CRET:TOJSON()
Aviso("JSON-TEXTO",cJSON,{"JSON"},3,,,,.T.)

Return
