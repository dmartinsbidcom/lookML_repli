# The name of this view in Looker is "Tareascrear Fichas"
view: tareascrear_fichas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `equipo_marketing.TAREASCrearFichas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " Hecho " in Explore.

  dimension: __hecho_ {
    type: yesno
    sql: ${TABLE}.__Hecho_ ;;
  }

  dimension: __urgencia_category_ {
    type: yesno
    sql: ${TABLE}.__Urgencia_Category_ ;;
  }

  dimension: a__o_a_evaluar {
    type: number
    sql: ${TABLE}.A__o_a_Evaluar ;;
  }

  dimension: a__o_mesn {
    type: number
    sql: ${TABLE}.A__o_mesn ;;
  }

  dimension: a__o_trimestre {
    type: string
    sql: ${TABLE}.A__o_Trimestre ;;
  }

  dimension: c__digo {
    type: string
    sql: ${TABLE}.C__digo ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: comentario {
    type: string
    sql: ${TABLE}.Comentario ;;
  }

  dimension: competencia_principal_o_referencia {
    type: string
    sql: ${TABLE}.Competencia_Principal_o_Referencia ;;
  }

  dimension: conectividad {
    type: string
    sql: ${TABLE}.Conectividad ;;
  }

  dimension: d__as_desde_la_tarea {
    type: number
    sql: ${TABLE}.D__as_desde_la_tarea ;;
  }

  dimension: egreso_zflp {
    type: number
    sql: ${TABLE}.Egreso_ZFLP ;;
  }

  dimension: esfuerzo_adicional {
    type: string
    sql: ${TABLE}.Esfuerzo_Adicional ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_de_finalizaci__n {
    type: time
    description: "%d/%m/%E4Y"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_de_finalizaci__n ;;
  }

  dimension_group: fecha_de_inicio {
    type: time
    description: "%d/%m/%E4Y"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_de_Inicio ;;
  }

  dimension: ficha_apta_looker {
    type: number
    sql: ${TABLE}.ficha_apta_looker ;;
  }

  dimension: ficha_pendiente_looker {
    type: number
    sql: ${TABLE}.ficha_pendiente_looker ;;
  }

  dimension: fob_total_compra {
    type: number
    sql: ${TABLE}.FOB_Total_Compra ;;
  }

  dimension: l__nea {
    type: string
    sql: ${TABLE}.L__nea ;;
  }

  dimension: link_archivo_sku_por_script__no_modificar_ {
    type: string
    sql: ${TABLE}.Link_Archivo_SKU_por_script__No_modificar_ ;;
  }

  dimension: link_del_material {
    type: string
    sql: ${TABLE}.Link_del_Material ;;
  }

  dimension: links_de_cotizacion {
    type: string
    sql: ${TABLE}.Links_de_Cotizacion ;;
  }

  dimension: links_de_referencia {
    type: string
    sql: ${TABLE}.Links_de_referencia ;;
  }

  dimension: logo_on_product {
    type: yesno
    sql: ${TABLE}.Logo_on_Product ;;
  }

  dimension: m3_total_compra {
    type: number
    sql: ${TABLE}.M3_Total_Compra ;;
  }

  dimension: mail_proveedor {
    type: string
    sql: ${TABLE}.Mail_proveedor ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.Marca ;;
  }

  dimension: marca__internacional {
    type: string
    sql: ${TABLE}.Marca__Internacional ;;
  }

  dimension: mes_a__o {
    type: string
    sql: ${TABLE}.Mes_a__o ;;
  }

  dimension: mes_a_evaluar {
    type: string
    sql: ${TABLE}.Mes_a_Evaluar ;;
  }

  dimension: mes_a_evaluar_i {
    type: string
    sql: ${TABLE}.Mes_a_Evaluar_i ;;
  }

  dimension: modelo_cni_v3 {
    type: string
    sql: ${TABLE}.Modelo_CNI_V3 ;;
  }

  dimension: modelo_de_fantas__a {
    type: string
    sql: ${TABLE}.Modelo_de_Fantas__a ;;
  }

  dimension: modo_de_conectividad {
    type: string
    sql: ${TABLE}.Modo_de_Conectividad ;;
  }

  dimension: negocio {
    type: string
    sql: ${TABLE}.Negocio ;;
  }

  dimension: precio {
    type: string
    sql: ${TABLE}.Precio ;;
  }

  dimension: prioridad {
    type: string
    sql: ${TABLE}.Prioridad ;;
  }

  dimension: proveedor {
    type: string
    sql: ${TABLE}.Proveedor ;;
  }

  dimension: qc {
    type: string
    sql: ${TABLE}.QC ;;
  }

  dimension: responsable {
    type: string
    sql: ${TABLE}.Responsable ;;
  }

  dimension: sku_repetido {
    type: string
    sql: ${TABLE}.SKU_Repetido ;;
  }

  dimension: stock_caldas {
    type: number
    sql: ${TABLE}.Stock_CALDAS ;;
  }

  dimension: stock_china {
    type: number
    sql: ${TABLE}.Stock_CHINA ;;
  }

  dimension: stock_zflp {
    type: number
    sql: ${TABLE}.Stock_ZFLP ;;
  }

  dimension: stocks_entrando_en_15_dias {
    type: number
    sql: ${TABLE}.Stocks_entrando_en_15_dias ;;
  }

  dimension: stocks_entrando_en_30_dias {
    type: number
    sql: ${TABLE}.Stocks_entrando_en_30_dias ;;
  }

  dimension: stocks_entrando_en_mas_de_30_dias {
    type: number
    sql: ${TABLE}.Stocks_entrando_en_mas_de_30_dias ;;
  }

  dimension: tipo_de_publicaci__n_sugerida {
    type: string
    sql: ${TABLE}.Tipo_de_Publicaci__n_Sugerida ;;
  }

  dimension: trimestre {
    type: string
    sql: ${TABLE}.Trimestre ;;
  }

  dimension: we_chat_proveedor {
    type: string
    sql: ${TABLE}.WeChat_proveedor ;;
  }
  measure: count {
    type: count
  }
}
