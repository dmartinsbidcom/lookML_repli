# The name of this view in Looker is "Gpsolicitudes"
view: gpsolicitudes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2operativo.gpsolicitudes` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Celular Cliente Gpsolicitud" in Explore.

  dimension: celular_cliente_gpsolicitud {
    type: string
    sql: ${TABLE}.CelularClienteGPSolicitud ;;
  }

  dimension: codigo_producto_gpsolicitud {
    type: string
    sql: ${TABLE}.CodigoProductoGPSolicitud ;;
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

  dimension: dnicliente_gpsolicitud {
    type: string
    sql: ${TABLE}.DNIClienteGPSolicitud ;;
  }

  dimension: domicilio_gpsolicitud {
    type: string
    sql: ${TABLE}.DomicilioGPSolicitud ;;
  }

  dimension: e_mail_cliente_gpsolicitud {
    type: string
    sql: ${TABLE}.eMailClienteGPSolicitud ;;
  }

  dimension: estado_gpsolicitud {
    type: number
    sql: ${TABLE}.EstadoGPSolicitud ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_carga_gpsolicitud {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FechaCargaGPSolicitud ;;
  }

  dimension_group: fecha_recepcion_gpsolicitud {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FechaRecepcionGPSolicitud ;;
  }

  dimension_group: fecha_venta_gpsolicitud {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FechaVentaGPSolicitud ;;
  }

  dimension: id_comprobante_presupuesto {
    type: number
    sql: ${TABLE}.idComprobantePresupuesto ;;
  }

  dimension: id_empresa_vendedora {
    type: number
    sql: ${TABLE}.idEmpresaVendedora ;;
  }

  dimension: id_gpsolicitud {
    type: number
    sql: ${TABLE}.idGPSolicitud ;;
  }

  dimension: id_producto_presupuesto {
    type: number
    sql: ${TABLE}.idProductoPresupuesto ;;
  }

  dimension: id_tb_bo_motivo {
    type: number
    sql: ${TABLE}.idTbBoMotivo ;;
  }

  dimension: link_ubicacion_gpsolicitud {
    type: string
    sql: ${TABLE}.LinkUbicacionGPSolicitud ;;
  }

  dimension: llevar_cambio_xmoto_gpsolicitud {
    type: number
    sql: ${TABLE}.LlevarCambioXMotoGPSolicitud ;;
  }

  dimension: localidad_gpsolicitud {
    type: string
    sql: ${TABLE}.LocalidadGPSolicitud ;;
  }

  dimension: logistica_gpsolicitud {
    type: number
    sql: ${TABLE}.LogisticaGPSolicitud ;;
  }

  dimension: meses_gtia_producto_gpsolicitud {
    type: number
    sql: ${TABLE}.MesesGtiaProductoGPSolicitud ;;
  }

  dimension: motivo_gpsolicitud {
    type: number
    sql: ${TABLE}.MotivoGPSolicitud ;;
  }

  dimension: nombre_cliente_gpsolicitud {
    type: string
    sql: ${TABLE}.NombreClienteGPSolicitud ;;
  }

  dimension: nombre_producto_gpsolicitud {
    type: string
    sql: ${TABLE}.NombreProductoGPSolicitud ;;
  }

  dimension: num_comp_externo_gpsolicitud {
    type: number
    sql: ${TABLE}.NumCompExternoGPSolicitud ;;
  }

  dimension: numero_guia {
    type: string
    sql: ${TABLE}.NumeroGuia ;;
  }

  dimension: observaciones_gpsolicitud {
    type: string
    sql: ${TABLE}.ObservacionesGPSolicitud ;;
  }

  dimension: origen_venta_gpsolicitud {
    type: number
    sql: ${TABLE}.OrigenVentaGPSolicitud ;;
  }

  dimension: provincia_gpsolicitud {
    type: string
    sql: ${TABLE}.ProvinciaGPSolicitud ;;
  }

  dimension: puerta_gpsolicitud {
    type: number
    sql: ${TABLE}.PuertaGPSolicitud ;;
  }

  dimension: pvcomp_externo_gpsolicitud {
    type: number
    sql: ${TABLE}.PVCompExternoGPSolicitud ;;
  }
  measure: count {
    type: count
  }
}
