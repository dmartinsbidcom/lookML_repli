# The name of this view in Looker is "Checkoutbidcom Testcheckoutbidcom Registro Compras Pendientes"
view: checkoutbidcom_testcheckoutbidcom_registro_compras_pendientes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `checkoutbidcom_testcheckoutbidcom.registro_compras_pendientes` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Comanda" in Explore.

  dimension: comanda {
    type: string
    sql: ${TABLE}.comanda ;;
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

  dimension: estado_compra_pendiente {
    type: number
    sql: ${TABLE}.estado_compra_pendiente ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha ;;
  }

  dimension_group: fecha_update {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_update ;;
  }

  dimension: id_carrito {
    type: number
    sql: ${TABLE}.id_carrito ;;
  }

  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }

  dimension: responsable {
    type: string
    sql: ${TABLE}.responsable ;;
  }
  measure: count {
    type: count
  }
}
