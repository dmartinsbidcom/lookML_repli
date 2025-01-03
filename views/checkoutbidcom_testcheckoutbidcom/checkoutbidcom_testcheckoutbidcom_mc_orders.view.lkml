# The name of this view in Looker is "Checkoutbidcom Testcheckoutbidcom Mc Orders"
view: checkoutbidcom_testcheckoutbidcom_mc_orders {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `checkoutbidcom_testcheckoutbidcom.mc_orders` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Datastream Metadata Source Timestamp" in Explore.

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
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_alta_comprobante {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_AltaComprobante ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.idComprobante ;;
  }

  dimension: nombre_operacion {
    type: string
    sql: ${TABLE}.nombreOperacion ;;
  }

  dimension: nombre_usuario_alta_comprobante {
    type: string
    sql: ${TABLE}.nombreUsuario_AltaComprobante ;;
  }

  dimension: numero_comprobante {
    type: string
    sql: ${TABLE}.numeroComprobante ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }
  measure: count {
    type: count
  }
}
