# The name of this view in Looker is "Gestion Publicidad Ml Stock Nacionalizado"
view: gestion_publicidad_ml_stock_nacionalizado {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_publicidad_ML.stock_nacionalizado` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Category" in Explore.

  dimension: category {
    type: string
    description: "nombre del category"
    sql: ${TABLE}.category ;;
  }

  dimension: ddi_30_dias_historico {
    type: number
    sql: ${TABLE}.ddi_30_dias_historico ;;
  }

  dimension: ddi_30_dias_venta_estimada {
    type: number
    sql: ${TABLE}.ddi_30_dias_venta_estimada ;;
  }

  dimension: ddi_7_dias_historico {
    type: number
    sql: ${TABLE}.ddi_7_dias_historico ;;
  }

  dimension: ddi_final {
    type: number
    sql: ${TABLE}.ddi_final ;;
  }

  dimension: ddi_historico {
    type: number
    sql: ${TABLE}.ddi_Historico ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: stock_nacionalizado {
    type: number
    sql: ${TABLE}.stock_nacionalizado ;;
  }

  dimension: venta_30_dias_historica {
    type: number
    sql: ${TABLE}.venta_30_dias_historica ;;
  }

  dimension: venta_7_dias_historica {
    type: number
    sql: ${TABLE}.venta_7_dias_historica ;;
  }

  dimension: venta_estimada_30_dias {
    type: number
    sql: ${TABLE}.venta_estimada_30_dias ;;
  }

  dimension: vpd_30_dias {
    type: number
    sql: ${TABLE}.vpd_30_Dias ;;
  }

  dimension: vpd_7_dias {
    type: number
    description: "venta por dia"
    sql: ${TABLE}.vpd_7_Dias ;;
  }

  dimension: vpd_estimada_30_dias {
    type: number
    sql: ${TABLE}.vpd_estimada_30_dias ;;
  }
  measure: count {
    type: count
  }
}
