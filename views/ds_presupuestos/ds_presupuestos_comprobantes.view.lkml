# The name of this view in Looker is "Ds Presupuestos Comprobantes"
view: ds_presupuestos_comprobantes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.comprobantes` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Caecomprobante" in Explore.

  dimension: caecomprobante {
    type: string
    sql: ${TABLE}.CAEComprobante ;;
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

  dimension: descripcion_comprobante {
    type: string
    sql: ${TABLE}.descripcionComprobante ;;
  }

  dimension: error_caecomprobante {
    type: string
    sql: ${TABLE}.errorCAEComprobante ;;
  }

  dimension: facturacion_pendiente_comprobante {
    type: number
    sql: ${TABLE}.facturacionPendienteComprobante ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_baja_comprobante {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaBajaComprobante ;;
  }

  dimension_group: fecha_carga_comprobante {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_carga_comprobante ;;
  }

  dimension_group: fecha_comprobante {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaComprobante ;;
  }

  dimension_group: fecha_comprobante_externo {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaComprobanteExterno ;;
  }

  dimension_group: fecha_contabilizacion_comprobante {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaContabilizacionComprobante ;;
  }

  dimension: fecha_estimada_arribo_comprobante {
    type: string
    sql: ${TABLE}.fechaEstimadaArriboComprobante ;;
  }

  dimension: fecha_salida_comprobante {
    type: string
    sql: ${TABLE}.fechaSalidaComprobante ;;
  }

  dimension_group: fecha_usuario_modifica {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaUsuarioModifica ;;
  }

  dimension: forwarder_comprobante {
    type: string
    sql: ${TABLE}.forwarderComprobante ;;
  }

  dimension: id_agenda {
    type: number
    sql: ${TABLE}.idAgenda ;;
  }

  dimension: id_agenda_facturacion {
    type: number
    sql: ${TABLE}.idAgendaFacturacion ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.idComprobante ;;
  }

  dimension: id_comprobante_nc {
    type: number
    sql: ${TABLE}.idComprobanteNC ;;
  }

  dimension: id_empresa_factura {
    type: number
    sql: ${TABLE}.idEmpresaFactura ;;
  }

  dimension: id_envio {
    type: number
    sql: ${TABLE}.idEnvio ;;
  }

  dimension: id_estado_percepcion {
    type: number
    sql: ${TABLE}.idEstadoPercepcion ;;
  }

  dimension: id_factura {
    type: number
    sql: ${TABLE}.idFactura ;;
  }

  dimension: id_fuente_venta {
    type: number
    sql: ${TABLE}.idFuenteVenta ;;
  }

  dimension: id_fuente_venta_cierre {
    type: number
    sql: ${TABLE}.idFuenteVentaCierre ;;
  }

  dimension: id_operacion {
    type: number
    sql: ${TABLE}.idOperacion ;;
  }

  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.idProveedor ;;
  }

  dimension: id_usuario_alta {
    type: number
    sql: ${TABLE}.idUsuarioAlta ;;
  }

  dimension: id_usuario_baja {
    type: number
    sql: ${TABLE}.idUsuarioBaja ;;
  }

  dimension: id_usuario_modifica {
    type: number
    sql: ${TABLE}.idUsuarioModifica ;;
  }

  dimension: impuestos_internos_comprobante {
    type: number
    sql: ${TABLE}.ImpuestosInternosComprobante ;;
  }

  dimension: iva_comprobante {
    type: number
    sql: ${TABLE}.ivaComprobante ;;
  }

  dimension: letra_comprobante {
    type: string
    sql: ${TABLE}.letraComprobante ;;
  }

  dimension: neto_comprobante {
    type: number
    sql: ${TABLE}.netoComprobante ;;
  }

  dimension: numero_comprobante {
    type: number
    sql: ${TABLE}.numeroComprobante ;;
  }

  dimension: numero_comprobante_externo {
    type: string
    sql: ${TABLE}.numeroComprobanteExterno ;;
  }

  dimension: numero_factura {
    type: string
    sql: ${TABLE}.numeroFactura ;;
  }

  dimension: order_id_producteca {
    type: string
    sql: ${TABLE}.Order_ID_Producteca ;;
  }

  dimension: percepcion_ibcomprobante {
    type: number
    sql: ${TABLE}.PercepcionIBComprobante ;;
  }

  dimension: peso_omedidas_comprobante {
    type: string
    sql: ${TABLE}.pesoOMedidasComprobante ;;
  }

  dimension: proforma_comprobante {
    type: string
    sql: ${TABLE}.proformaComprobante ;;
  }

  dimension: pv_comprobante {
    type: number
    sql: ${TABLE}.pvComprobante ;;
  }

  dimension: tipo_comprobante {
    type: string
    sql: ${TABLE}.tipoComprobante ;;
  }

  dimension: total_comprobante {
    type: number
    sql: ${TABLE}.totalComprobante ;;
  }

  dimension: tracking_comprobante {
    type: string
    sql: ${TABLE}.trackingComprobante ;;
  }

  dimension: uuid_comprobante {
    type: string
    sql: ${TABLE}.uuidComprobante ;;
  }

  dimension: vinculo_facturacion {
    type: string
    sql: ${TABLE}.Vinculo_Facturacion ;;
  }

  dimension_group: vto_caecomprobante {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.vtoCAEComprobante ;;
  }
  measure: count {
    type: count
  }
}
