# The name of this view in Looker is "Historial Rendicion"
view: historial_rendicion {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.historial_rendicion` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Campo Modificado" in Explore.

  dimension: campo_modificado {
    type: string
    sql: ${TABLE}.campo_modificado ;;
  }

  dimension: chofer_nuevo {
    type: string
    sql: ${TABLE}.chofer_nuevo ;;
  }

  dimension: chofer_viejo {
    type: string
    sql: ${TABLE}.chofer_viejo ;;
  }

  dimension: comprobante {
    type: number
    sql: ${TABLE}.comprobante ;;
  }

  dimension: costo_nuevo {
    type: number
    sql: ${TABLE}.costo_nuevo ;;
  }

  dimension: costo_viejo {
    type: number
    sql: ${TABLE}.costo_viejo ;;
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

  dimension_group: fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha ;;
  }

  dimension_group: fecha_despachado_nueva {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_despachado_nueva ;;
  }

  dimension_group: fecha_despachado_vieja {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_despachado_vieja ;;
  }

  dimension_group: fecha_rendicion_nueva {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_rendicion_nueva ;;
  }

  dimension_group: fecha_rendicion_vieja {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_rendicion_vieja ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: id_rendicion {
    type: number
    sql: ${TABLE}.id_rendicion ;;
  }

  dimension: monto_cobrado_nuevo {
    type: number
    sql: ${TABLE}.monto_cobrado_nuevo ;;
  }

  dimension: monto_cobrado_viejo {
    type: number
    sql: ${TABLE}.monto_cobrado_viejo ;;
  }

  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }

  dimension: usuario_modifica {
    type: string
    sql: ${TABLE}.usuario_modifica ;;
  }
  measure: count {
    type: count
  }
}
