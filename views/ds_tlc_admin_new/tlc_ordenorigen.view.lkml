# The name of this view in Looker is "Tlc Ordenorigen"
view: tlc_ordenorigen {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_tlc_admin_new.tlc_ordenorigen` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cliente Venta Anticipada ID" in Explore.

  dimension: cliente_venta_anticipada_id {
    type: number
    sql: ${TABLE}.cliente_venta_anticipada_id ;;
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

  dimension: dias_produccion_packeo_post_inicial {
    type: number
    sql: ${TABLE}.dias_produccion_packeo_post_inicial ;;
  }

  dimension: fase_pago_final {
    type: string
    sql: ${TABLE}.fase_pago_final ;;
  }

  dimension: fase_pago_intermedio {
    type: string
    sql: ${TABLE}.fase_pago_intermedio ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_invoice {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_invoice ;;
  }

  dimension_group: fecha_pago_inicial {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_pago_inicial ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: link_invoice {
    type: string
    sql: ${TABLE}.link_invoice ;;
  }

  dimension: numero_invoice {
    type: string
    sql: ${TABLE}.numero_invoice ;;
  }

  dimension: porcentaje_pago_final {
    type: number
    sql: ${TABLE}.porcentaje_pago_final ;;
  }

  dimension: porcentaje_pago_inicial {
    type: number
    sql: ${TABLE}.porcentaje_pago_inicial ;;
  }

  dimension: porcentaje_pago_intermedio {
    type: number
    sql: ${TABLE}.porcentaje_pago_intermedio ;;
  }

  dimension: proveedor_id {
    type: number
    sql: ${TABLE}.proveedor_id ;;
  }

  dimension: tarjeta_credito {
    type: number
    sql: ${TABLE}.tarjeta_credito ;;
  }

  dimension: trader_pagadora {
    type: string
    sql: ${TABLE}.trader_pagadora ;;
  }

  dimension: venta_anticipada {
    type: number
    sql: ${TABLE}.venta_anticipada ;;
  }
  measure: count {
    type: count
  }
}
