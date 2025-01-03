# The name of this view in Looker is "Ds Checkoutbidcom Cupon Descuento"
view: ds_checkoutbidcom_cupon_descuento {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_checkoutbidcom.CuponDescuento` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Activo" in Explore.

  dimension: activo {
    type: number
    sql: ${TABLE}.activo ;;
  }

  dimension: aplicado_a {
    type: string
    sql: ${TABLE}.aplicado_a ;;
  }

  dimension: cupon {
    type: string
    sql: ${TABLE}.cupon ;;
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

  dimension: descuento {
    type: number
    sql: ${TABLE}.descuento ;;
  }

  dimension: email_asignado {
    type: string
    sql: ${TABLE}.email_asignado ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_creacion ;;
  }

  dimension_group: fecha_desde {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_desde ;;
  }

  dimension_group: fecha_hasta {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_hasta ;;
  }

  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_modificacion ;;
  }

  dimension: fuente {
    type: string
    sql: ${TABLE}.fuente ;;
  }

  dimension: nombre_creador {
    type: string
    sql: ${TABLE}.nombre_creador ;;
  }

  dimension: nombre_modificador {
    type: string
    sql: ${TABLE}.nombre_modificador ;;
  }

  dimension: pago {
    type: string
    sql: ${TABLE}.pago ;;
  }

  dimension: restricciones {
    type: string
    sql: ${TABLE}.restricciones ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  dimension: tope_reintegro {
    type: number
    sql: ${TABLE}.tope_reintegro ;;
  }

  dimension: voucher {
    type: number
    sql: ${TABLE}.voucher ;;
  }
  measure: count {
    type: count
  }
}
