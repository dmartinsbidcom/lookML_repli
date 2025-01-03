# The name of this view in Looker is "Ds Presupuestos Reparaciones"
view: ds_presupuestos_reparaciones {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.reparaciones` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Comentario Finaliza Reparacion" in Explore.

  dimension: comentario_finaliza_reparacion {
    type: string
    sql: ${TABLE}.comentarioFinalizaReparacion ;;
  }

  dimension: comentario_presupuesto_reparacion {
    type: string
    sql: ${TABLE}.comentarioPresupuestoReparacion ;;
  }

  dimension: costo_estimado_reparacion {
    type: number
    sql: ${TABLE}.costoEstimadoReparacion ;;
  }

  dimension: costo_reparacion {
    type: number
    sql: ${TABLE}.costoReparacion ;;
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

  dimension: email_reparacion {
    type: string
    sql: ${TABLE}.emailReparacion ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_alta_reparacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaAltaReparacion ;;
  }

  dimension_group: fecha_cambio_estado_reparacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaCambioEstadoReparacion ;;
  }

  dimension_group: fecha_entrega_reparacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaEntregaReparacion ;;
  }

  dimension_group: fecha_estimada_reparacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaEstimadaReparacion ;;
  }

  dimension_group: fecha_finaliza_reparacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaFinalizaReparacion ;;
  }

  dimension: id_agenda {
    type: number
    sql: ${TABLE}.idAgenda ;;
  }

  dimension: id_aguila_garantia_item {
    type: number
    sql: ${TABLE}.idAguilaGarantiaItem ;;
  }

  dimension: id_comprobante_empresa_relacionada {
    type: number
    sql: ${TABLE}.idComprobanteEmpresaRelacionada ;;
  }

  dimension: id_comprobante_entrega_reparacion {
    type: number
    sql: ${TABLE}.idComprobante_EntregaReparacion ;;
  }

  dimension: id_comprobante_reparacion_consumos {
    type: number
    sql: ${TABLE}.idComprobante_ReparacionConsumos ;;
  }

  dimension: id_gf {
    type: number
    sql: ${TABLE}.idGF ;;
  }

  dimension: id_producto {
    type: number
    sql: ${TABLE}.idProducto ;;
  }

  dimension: id_producto_movimiento_venta {
    type: number
    sql: ${TABLE}.idProductoMovimiento_Venta ;;
  }

  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.idProveedor ;;
  }

  dimension: id_reclamo {
    type: number
    sql: ${TABLE}.idReclamo ;;
  }

  dimension: id_reparacion {
    type: number
    sql: ${TABLE}.idReparacion ;;
  }

  dimension: id_reparacion_deposito {
    type: number
    sql: ${TABLE}.idReparacionDeposito ;;
  }

  dimension: id_reparacion_estado {
    type: number
    sql: ${TABLE}.idReparacionEstado ;;
  }

  dimension: id_reparacion_masiva {
    type: number
    sql: ${TABLE}.idReparacionMasiva ;;
  }

  dimension: id_reparacion_origen {
    type: number
    sql: ${TABLE}.idReparacionOrigen ;;
  }

  dimension: id_usuario_alta_reparacion {
    type: number
    sql: ${TABLE}.idUsuario_AltaReparacion ;;
  }

  dimension: id_usuario_cambio_estado_reparacion {
    type: number
    sql: ${TABLE}.idUsuario_CambioEstadoReparacion ;;
  }

  dimension: id_usuario_entrega_reparacion {
    type: number
    sql: ${TABLE}.idUsuario_EntregaReparacion ;;
  }

  dimension: id_usuario_finaliza_reparacion {
    type: number
    sql: ${TABLE}.idUsuario_FinalizaReparacion ;;
  }

  dimension: llego_completo_reparacion {
    type: number
    sql: ${TABLE}.llegoCompletoReparacion ;;
  }

  dimension: observacion_interna_reparacion {
    type: string
    sql: ${TABLE}.observacionInternaReparacion ;;
  }

  dimension: observaciones_reparacion {
    type: string
    sql: ${TABLE}.observacionesReparacion ;;
  }

  dimension: tiene_garantia_reparacion {
    type: number
    sql: ${TABLE}.tieneGarantiaReparacion ;;
  }

  dimension: void_reparacion {
    type: string
    sql: ${TABLE}.voidReparacion ;;
  }
  measure: count {
    type: count
  }
}
