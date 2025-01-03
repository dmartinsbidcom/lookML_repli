# The name of this view in Looker is "Checkoutbidcom Testcheckoutbidcom Chk Getnet Payment"
view: checkoutbidcom_testcheckoutbidcom_chk_getnet_payment {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `checkoutbidcom_testcheckoutbidcom.CHK_getnet_payment` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Carrito ID" in Explore.

  dimension: carrito_id {
    type: number
    sql: ${TABLE}.carrito_id ;;
  }

  dimension: codigo_autorizacion {
    type: string
    sql: ${TABLE}.codigo_autorizacion ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created_payment_intention {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_payment_intention ;;
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

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension_group: fecha_devolucion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_devolucion ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: intentos {
    type: number
    sql: ${TABLE}.intentos ;;
  }

  dimension: monto {
    type: number
    sql: ${TABLE}.monto ;;
  }

  dimension: payment_intention {
    type: string
    sql: ${TABLE}.payment_intention ;;
  }

  dimension: response_payment {
    type: string
    sql: ${TABLE}.response_payment ;;
  }

  dimension: tipo_transaccion {
    type: string
    sql: ${TABLE}.tipo_transaccion ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.UUID ;;
  }
  measure: count {
    type: count
  }
}
