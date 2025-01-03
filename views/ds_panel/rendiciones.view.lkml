# The name of this view in Looker is "Rendiciones"
view: rendiciones {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.rendiciones` ;;

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
    type: number
    sql: ${TABLE}.comprobante ;;
  }

  dimension: costo {
    type: number
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
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_despachado {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_despachado ;;
  }

  dimension: fecha_fin {
    type: number
    sql: ${TABLE}.fecha_fin ;;
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

  dimension: localidad {
    type: string
    sql: ${TABLE}.localidad ;;
  }

  dimension: monto_cobrado {
    type: number
    sql: ${TABLE}.monto_cobrado ;;
  }
  measure: count {
    type: count
  }
}
