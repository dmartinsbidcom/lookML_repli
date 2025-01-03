# The name of this view in Looker is "Ds Presupuestos Reparaciones Rapidas"
view: ds_presupuestos_reparaciones_rapidas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.reparaciones_rapidas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Celular Cliente Reparacion Rapida" in Explore.

  dimension: celular_cliente_reparacion_rapida {
    type: string
    sql: ${TABLE}.celularClienteReparacionRapida ;;
  }

  dimension: comentario_reparacion {
    type: string
    sql: ${TABLE}.comentarioReparacion ;;
  }

  dimension: costo_reparacion_rapida {
    type: number
    sql: ${TABLE}.costoReparacionRapida ;;
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

  dimension_group: fecha_alta_reparacion_rapida {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaAltaReparacionRapida ;;
  }

  dimension_group: fecha_cambio_estado_reparacion_rapida {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaCambioEstadoReparacionRapida ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.idComprobante ;;
  }

  dimension: id_reparacion_rapida {
    type: number
    sql: ${TABLE}.idReparacionRapida ;;
  }

  dimension: id_reparacion_rapida_estado {
    type: number
    sql: ${TABLE}.idReparacionRapidaEstado ;;
  }

  dimension: id_usuario_alta_reparacion_rapida {
    type: number
    sql: ${TABLE}.idUsuario_AltaReparacionRapida ;;
  }

  dimension: id_usuario_cambio_estado_reparacion_rapida {
    type: number
    sql: ${TABLE}.idUsuario_CambioEstadoReparacionRapida ;;
  }

  dimension: nombre_cliente_reparacion_rapida {
    type: string
    sql: ${TABLE}.nombreClienteReparacionRapida ;;
  }

  dimension: producto_reparacion_rapida {
    type: string
    sql: ${TABLE}.productoReparacionRapida ;;
  }
  measure: count {
    type: count
  }
}
