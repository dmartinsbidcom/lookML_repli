# The name of this view in Looker is "Proauto"
view: proauto {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2orbit.proauto` ;;

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

  dimension: dbpro_auto {
    type: string
    sql: ${TABLE}.DBProAuto ;;
  }

  dimension: descripcion_pro_auto {
    type: string
    sql: ${TABLE}.DescripcionProAuto ;;
  }

  dimension: estado_actual_pro_auto {
    type: number
    sql: ${TABLE}.EstadoActualProAuto ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fhultimo_finalizado_pro_auto {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FHUltimoFinalizadoProAuto ;;
  }

  dimension_group: fhultimo_iniciado_pro_auto {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FHUltimoIniciadoProAuto ;;
  }

  dimension: id_pro_auto {
    type: number
    sql: ${TABLE}.idProAuto ;;
  }

  dimension: id_tipo_pro_auto {
    type: number
    sql: ${TABLE}.idTipoProAuto ;;
  }

  dimension: orden_ejecucion_pro_auto {
    type: number
    sql: ${TABLE}.OrdenEjecucionProAuto ;;
  }

  dimension: parametros_pro_auto {
    type: string
    sql: ${TABLE}.ParametrosProAuto ;;
  }

  dimension: tiempo_reinicio_minutos_pro_auto {
    type: number
    sql: ${TABLE}.TiempoReinicioMinutosProAuto ;;
  }

  dimension: usuario_inicio_pro_auto {
    type: string
    sql: ${TABLE}.UsuarioInicioProAuto ;;
  }

  dimension: valida_equipo_pro_auto {
    type: string
    sql: ${TABLE}.ValidaEquipoProAuto ;;
  }
  measure: count {
    type: count
  }
}
