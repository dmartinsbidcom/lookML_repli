# The name of this view in Looker is "Ds Presupuestos Cc Movimientos"
view: ds_presupuestos_cc_movimientos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.cc_movimientos` ;;

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

  dimension: id_cc {
    type: number
    sql: ${TABLE}.idCC ;;
  }

  dimension: id_ccmovimiento {
    type: number
    sql: ${TABLE}.idCCMovimiento ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.idComprobante ;;
  }

  dimension: id_forma_pago {
    type: number
    sql: ${TABLE}.idFormaPago ;;
  }

  dimension: resta_ccmovimiento {
    type: number
    sql: ${TABLE}.restaCCMovimiento ;;
  }

  dimension: resta_usdccmovimiento {
    type: number
    sql: ${TABLE}.restaUSDCCMovimiento ;;
  }

  dimension: suma_ccmovimiento {
    type: number
    sql: ${TABLE}.sumaCCMovimiento ;;
  }

  dimension: suma_usdccmovimiento {
    type: number
    sql: ${TABLE}.sumaUSDCCMovimiento ;;
  }

  dimension: tasa_cambio_ccmovimiento {
    type: number
    sql: ${TABLE}.tasaCambioCCMovimiento ;;
  }
  measure: count {
    type: count
  }
}
