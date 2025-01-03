# The name of this view in Looker is "Comprobantes Eliminados"
view: comprobantes_eliminados {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.comprobantes_eliminados` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Chofer" in Explore.

  dimension: chofer {
    type: string
    sql: ${TABLE}.chofer ;;
  }

  dimension: codigo_seguimiento {
    type: string
    sql: ${TABLE}.codigo_seguimiento ;;
  }

  dimension: comprobante {
    type: string
    sql: ${TABLE}.comprobante ;;
  }

  dimension: costo {
    type: string
    sql: ${TABLE}.costo ;;
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

  dimension: es_flex {
    type: string
    sql: ${TABLE}.es_flex ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_despachado {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_despachado ;;
  }

  dimension_group: fecha_eliminado {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_eliminado ;;
  }

  dimension_group: fecha_rendicion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_rendicion ;;
  }

  dimension_group: fecha_subido {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_subido ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: id_chofer {
    type: number
    sql: ${TABLE}.id_chofer ;;
  }

  dimension: localidad {
    type: string
    sql: ${TABLE}.localidad ;;
  }

  dimension: monto_cobrado {
    type: string
    sql: ${TABLE}.monto_cobrado ;;
  }

  dimension: usuario_elimina {
    type: string
    sql: ${TABLE}.usuario_elimina ;;
  }

  dimension: usuario_rendicion {
    type: string
    sql: ${TABLE}.usuario_rendicion ;;
  }
  measure: count {
    type: count
  }
}
