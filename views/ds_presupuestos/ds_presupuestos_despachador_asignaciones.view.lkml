# The name of this view in Looker is "Ds Presupuestos Despachador Asignaciones"
view: ds_presupuestos_despachador_asignaciones {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.despachador_asignaciones` ;;

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

  dimension: estacion_id {
    type: number
    sql: ${TABLE}.Estacion_ID ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_asignado {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.Fecha_Asignado ;;
  }

  dimension_group: fecha_preparacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.Fecha_Preparacion ;;
  }

  dimension_group: fecha_preparado {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.Fecha_Preparado ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.idComprobante ;;
  }

  dimension: id_despacho {
    type: number
    sql: ${TABLE}.idDespacho ;;
  }

  dimension: usuario_asignador {
    type: number
    sql: ${TABLE}.Usuario_Asignador ;;
  }

  dimension: usuario_preparacion {
    type: number
    sql: ${TABLE}.Usuario_Preparacion ;;
  }

  dimension: usuario_preparado {
    type: number
    sql: ${TABLE}.Usuario_Preparado ;;
  }
  measure: count {
    type: count
  }
}
