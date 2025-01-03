# The name of this view in Looker is "Ds Presupuestos Cambios"
view: ds_presupuestos_cambios {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.cambios` ;;

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
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_alta_cambio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaAltaCambio ;;
  }

  dimension_group: fecha_autoriza_cambio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaAutorizaCambio ;;
  }

  dimension_group: fecha_baja_cambio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaBajaCambio ;;
  }

  dimension_group: fecha_realiza_cambio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaRealizaCambio ;;
  }

  dimension: id_agenda {
    type: number
    sql: ${TABLE}.idAgenda ;;
  }

  dimension: id_aguila_garantia_item_venta {
    type: number
    sql: ${TABLE}.idAguilaGarantiaItemVenta ;;
  }

  dimension: id_cambio {
    type: number
    sql: ${TABLE}.idCambio ;;
  }

  dimension: id_cambio_estado {
    type: number
    sql: ${TABLE}.idCambioEstado ;;
  }

  dimension: id_cambio_motivo {
    type: number
    sql: ${TABLE}.idCambioMotivo ;;
  }

  dimension: id_cambio_origen {
    type: number
    sql: ${TABLE}.idCambioOrigen ;;
  }

  dimension: id_comprobante_faccambio {
    type: number
    sql: ${TABLE}.idComprobanteFACCambio ;;
  }

  dimension: id_comprobante_item_venta {
    type: number
    sql: ${TABLE}.idComprobanteItemVenta ;;
  }

  dimension: id_comprobante_nccambio {
    type: number
    sql: ${TABLE}.idComprobanteNCCambio ;;
  }

  dimension: id_comprobante_ncdevolucion {
    type: number
    sql: ${TABLE}.idComprobanteNCDevolucion ;;
  }

  dimension: id_comprobante_stkretorno {
    type: number
    sql: ${TABLE}.idComprobanteSTKRetorno ;;
  }

  dimension: id_gf {
    type: number
    sql: ${TABLE}.idGF ;;
  }

  dimension: id_producto_venta {
    type: number
    sql: ${TABLE}.idProductoVenta ;;
  }

  dimension: id_usuario_alta_cambio {
    type: number
    sql: ${TABLE}.idUsuarioAltaCambio ;;
  }

  dimension: id_usuario_autoriza_cambio {
    type: number
    sql: ${TABLE}.idUsuarioAutorizaCambio ;;
  }

  dimension: id_usuario_baja_cambio {
    type: number
    sql: ${TABLE}.idUsuarioBajaCambio ;;
  }

  dimension: id_usuario_realiza_cambio {
    type: number
    sql: ${TABLE}.idUsuarioRealizaCambio ;;
  }

  dimension: observaciones_cambio {
    type: string
    sql: ${TABLE}.observacionesCambio ;;
  }

  dimension: precio_producto_venta {
    type: number
    sql: ${TABLE}.precioProductoVenta ;;
  }
  measure: count {
    type: count
  }
}
