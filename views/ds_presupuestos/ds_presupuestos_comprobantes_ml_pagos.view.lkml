# The name of this view in Looker is "Ds Presupuestos Comprobantes Ml Pagos"
view: ds_presupuestos_comprobantes_ml_pagos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.comprobantes_ml_pagos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Concepto Ccmovimiento" in Explore.

  dimension: concepto_ccmovimiento {
    type: string
    sql: ${TABLE}.conceptoCCMovimiento ;;
  }

  dimension: datastream_metadata__source_timestamp {
    type: number
    sql: ${TABLE}.datastream_metadata.source_timestamp ;;
    group_label: "Datastream Metadata"
    group_item_label: "Source Timestamp"
  }

  dimension: datastream_metadata__uuid {
    type: string
    sql: ${TABLE}.datastream_metadata.uuid ;;
    group_label: "Datastream Metadata"
    group_item_label: "Uuid"
  }

  dimension: dif {
    type: number
    sql: ${TABLE}.Dif ;;
  }

  dimension: id_cc {
    type: number
    sql: ${TABLE}.idCC ;;
  }

  dimension: id_ccmovimiento_campo {
    type: number
    sql: ${TABLE}.idCCMovimientoCampo ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.idComprobante ;;
  }

  dimension: numero_operacion_ccmovimiento_campo {
    type: string
    sql: ${TABLE}.numeroOperacionCCMovimientoCampo ;;
  }

  dimension: pagado {
    type: number
    sql: ${TABLE}.PAGADO ;;
  }

  dimension: resta_ccmovimiento {
    type: number
    sql: ${TABLE}.restaCCMovimiento ;;
  }

  dimension: shipping_cost {
    type: number
    sql: ${TABLE}.shipping_cost ;;
  }

  dimension: suma_ccmovimiento {
    type: number
    sql: ${TABLE}.sumaCCMovimiento ;;
  }

  dimension: transaction_amount {
    type: number
    sql: ${TABLE}.transaction_amount ;;
  }
  measure: count {
    type: count
  }
}
