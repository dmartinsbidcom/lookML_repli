# The name of this view in Looker is "Ds Presupuestos Despachos Resumen"
view: ds_presupuestos_despachos_resumen {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.despachos_resumen` ;;

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

  dimension: estacion_nombre {
    type: string
    sql: ${TABLE}.Estacion_Nombre ;;
  }

  dimension: estado_resumen {
    type: string
    sql: ${TABLE}.Estado_Resumen ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_resumen {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.Fecha_Resumen ;;
  }

  dimension: id_resumen {
    type: number
    sql: ${TABLE}.idResumen ;;
  }

  dimension: id_usuario_prepara {
    type: number
    sql: ${TABLE}.idUsuario_Prepara ;;
  }

  dimension: id_usuario_resumen {
    type: number
    sql: ${TABLE}.idUsuario_Resumen ;;
  }

  dimension: nombre_usuario_prepara {
    type: string
    sql: ${TABLE}.nombreUsuario_Prepara ;;
  }

  dimension: nombre_usuario_resumen {
    type: string
    sql: ${TABLE}.nombreUsuario_Resumen ;;
  }

  dimension: pc {
    type: string
    sql: ${TABLE}.PC ;;
  }
  measure: count {
    type: count
  }
}
