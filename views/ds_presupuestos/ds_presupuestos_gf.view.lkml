# The name of this view in Looker is "Ds Presupuestos Gf"
view: ds_presupuestos_gf {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.gf` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Comentario Finalizo Gf" in Explore.

  dimension: comentario_finalizo_gf {
    type: string
    sql: ${TABLE}.comentarioFinalizoGF ;;
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

  dimension_group: fecha_alta_gf {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaAltaGF ;;
  }

  dimension_group: fecha_baja_gf {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaBajaGF ;;
  }

  dimension_group: fecha_cambio_estado_gf {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaCambioEstadoGF ;;
  }

  dimension_group: fecha_ccokgf {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaCCOKGF ;;
  }

  dimension_group: fecha_finalizo_gf {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaFinalizoGF ;;
  }

  dimension: id_comprobante_ala_venta_gf {
    type: number
    sql: ${TABLE}.idComprobante_ALaVentaGF ;;
  }

  dimension: id_comprobante_alta_gf {
    type: number
    sql: ${TABLE}.idComprobante_AltaGF ;;
  }

  dimension: id_comprobante_consumos_gf {
    type: number
    sql: ${TABLE}.idComprobante_ConsumosGF ;;
  }

  dimension: id_deposito {
    type: number
    sql: ${TABLE}.idDeposito ;;
  }

  dimension: id_gf {
    type: number
    sql: ${TABLE}.idGF ;;
  }

  dimension: id_gfestado {
    type: number
    sql: ${TABLE}.idGFEstado ;;
  }

  dimension: id_producto {
    type: number
    sql: ${TABLE}.idProducto ;;
  }

  dimension: id_reparacion {
    type: number
    sql: ${TABLE}.idReparacion ;;
  }

  dimension: id_usuario_alta_gf {
    type: number
    sql: ${TABLE}.idUsuario_AltaGF ;;
  }

  dimension: id_usuario_baja_gf {
    type: number
    sql: ${TABLE}.idUsuario_BajaGF ;;
  }

  dimension: id_usuario_cambio_estado_gf {
    type: number
    sql: ${TABLE}.idUsuario_CambioEstadoGF ;;
  }

  dimension: id_usuario_ccokgf {
    type: number
    sql: ${TABLE}.idUsuario_CCOKGF ;;
  }

  dimension: id_usuario_finalizo_gf {
    type: number
    sql: ${TABLE}.idUsuario_FinalizoGF ;;
  }

  dimension: nombre_gfproblema {
    type: string
    sql: ${TABLE}.nombreGFProblema ;;
  }

  dimension: problemas_gf {
    type: string
    sql: ${TABLE}.problemasGF ;;
  }

  dimension: responsable_gf {
    type: string
    sql: ${TABLE}.responsableGF ;;
  }

  dimension: void_gf {
    type: string
    sql: ${TABLE}.voidGF ;;
  }
  measure: count {
    type: count
  }
}
