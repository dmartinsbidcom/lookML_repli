# The name of this view in Looker is "Checkoutbidcom Testcheckoutbidcom Aviso Stock"
view: checkoutbidcom_testcheckoutbidcom_aviso_stock {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `checkoutbidcom_testcheckoutbidcom.AvisoStock` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Avisado" in Explore.

  dimension: avisado {
    type: number
    sql: ${TABLE}.Avisado ;;
  }

  dimension: comentario {
    type: string
    sql: ${TABLE}.Comentario ;;
  }

  dimension: datastream_metadata__is_deleted {
    type: yesno
    sql: ${TABLE}.datastream_metadata.is_deleted ;;
    group_label: "Datastream Metadata"
    group_item_label: "Is Deleted"
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

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Fecha ;;
  }

  dimension: id_aviso {
    type: number
    sql: ${TABLE}.IdAviso ;;
  }

  dimension: id_producto {
    type: number
    sql: ${TABLE}.IdProducto ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.Telefono ;;
  }
  measure: count {
    type: count
  }
}
