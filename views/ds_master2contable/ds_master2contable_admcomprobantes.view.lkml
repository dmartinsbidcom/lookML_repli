# The name of this view in Looker is "Ds Master2contable Admcomprobantes"
view: ds_master2contable_admcomprobantes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2contable.admcomprobantes` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Anulado Comprobante" in Explore.

  dimension: anulado_comprobante {
    type: number
    sql: ${TABLE}.AnuladoComprobante ;;
  }

  dimension: asiento_ejercicio_comprobante {
    type: number
    sql: ${TABLE}.AsientoEjercicioComprobante ;;
  }

  dimension: cantidad_pro_orden {
    type: number
    sql: ${TABLE}.CantidadProOrden ;;
  }

  dimension: cierre_orcomprobante {
    type: number
    sql: ${TABLE}.CierreORComprobante ;;
  }

  dimension: compasociadofechacomprobante {
    type: number
    sql: ${TABLE}.compasociadofechacomprobante ;;
  }

  dimension: compasociadofechavtocomprobante {
    type: number
    sql: ${TABLE}.compasociadofechavtocomprobante ;;
  }

  dimension: compasociadonumerocomprobante {
    type: number
    sql: ${TABLE}.compasociadonumerocomprobante ;;
  }

  dimension: compasociadopendientecomprobante {
    type: number
    sql: ${TABLE}.compasociadopendientecomprobante ;;
  }

  dimension: compasociadopvcomprobante {
    type: number
    sql: ${TABLE}.compasociadopvcomprobante ;;
  }

  dimension: compra_vehiculo_comprobante {
    type: number
    sql: ${TABLE}.CompraVehiculoComprobante ;;
  }

  dimension: cond_ivacomprobante {
    type: string
    sql: ${TABLE}.CondIVAComprobante ;;
  }

  dimension: cuit_comprobante {
    type: string
    sql: ${TABLE}.CuitComprobante ;;
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

  dimension: domicilio_comprobante {
    type: string
    sql: ${TABLE}.DomicilioComprobante ;;
  }

  dimension: emailcomprobante {
    type: string
    sql: ${TABLE}.emailcomprobante ;;
  }

  dimension: es_mi_py_mecomprobante {
    type: number
    sql: ${TABLE}.EsMiPyMEComprobante ;;
  }

  dimension: fecha_comprobante {
    type: number
    sql: ${TABLE}.FechaComprobante ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_comprobante {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FechaComprobanteDate ;;
  }

  dimension: fecha_vto_caecomprobante {
    type: number
    sql: ${TABLE}.FechaVtoCAEComprobante ;;
  }

  dimension: forma_pago_comprobante {
    type: string
    sql: ${TABLE}.FormaPagoComprobante ;;
  }

  dimension: grabopdfcomprobante {
    type: number
    sql: ${TABLE}.grabopdfcomprobante ;;
  }

  dimension: id_cc {
    type: number
    sql: ${TABLE}.IdCC ;;
  }

  dimension: id_comp_sinc_st {
    type: number
    sql: ${TABLE}.idCompSincSt ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.IdComprobante ;;
  }

  dimension: id_def_comprobante {
    type: number
    sql: ${TABLE}.IdDefComprobante ;;
  }

  dimension: id_mlventa {
    type: number
    sql: ${TABLE}.idMLVenta ;;
  }

  dimension: id_operacion {
    type: number
    sql: ${TABLE}.IdOperacion ;;
  }

  dimension: id_pro_orden {
    type: number
    sql: ${TABLE}.idProOrden ;;
  }

  dimension: id_provincia {
    type: number
    sql: ${TABLE}.IdProvincia ;;
  }

  dimension: id_ta_or {
    type: number
    sql: ${TABLE}.idTaOR ;;
  }

  dimension: id_ueusuario {
    type: number
    sql: ${TABLE}.idUEUsuario ;;
  }

  dimension: id_vendedor {
    type: number
    sql: ${TABLE}.idVendedor ;;
  }

  dimension: idoperacionsinc {
    type: number
    sql: ${TABLE}.idoperacionsinc ;;
  }

  dimension: letra_comprobante {
    type: string
    sql: ${TABLE}.LetraComprobante ;;
  }

  dimension: linkdrivecomprobante {
    type: string
    sql: ${TABLE}.linkdrivecomprobante ;;
  }

  dimension: localidad_comprobante {
    type: string
    sql: ${TABLE}.LocalidadComprobante ;;
  }

  dimension: modo_impresion_detalle_comprobante {
    type: number
    sql: ${TABLE}.ModoImpresionDetalleComprobante ;;
  }

  dimension: neto_migracion_comprobante {
    type: number
    sql: ${TABLE}.NetoMigracionComprobante ;;
  }

  dimension: nombreclientecomprobante {
    type: string
    sql: ${TABLE}.nombreclientecomprobante ;;
  }

  dimension: nro_caecomprobante {
    type: string
    sql: ${TABLE}.NroCAEComprobante ;;
  }

  dimension: nroitemauxiliarcomprobante {
    type: number
    sql: ${TABLE}.nroitemauxiliarcomprobante ;;
  }

  dimension: nrooperacioncomprobante {
    type: string
    sql: ${TABLE}.nrooperacioncomprobante ;;
  }

  dimension: numero_comprobante {
    type: number
    sql: ${TABLE}.NumeroComprobante ;;
  }

  dimension: numero_etapa_pro_orden {
    type: number
    sql: ${TABLE}.NumeroEtapaProOrden ;;
  }

  dimension: numero_libro_diario_comprobante {
    type: number
    sql: ${TABLE}.NumeroLibroDiarioComprobante ;;
  }

  dimension: observacioncomprobante {
    type: string
    sql: ${TABLE}.observacioncomprobante ;;
  }

  dimension: pais_comprobante {
    type: string
    sql: ${TABLE}.PaisComprobante ;;
  }

  dimension: partido_comprobante {
    type: string
    sql: ${TABLE}.PartidoComprobante ;;
  }

  dimension: prestamo_comprobante {
    type: number
    sql: ${TABLE}.PrestamoComprobante ;;
  }

  dimension: provincia_comprobante {
    type: string
    sql: ${TABLE}.ProvinciaComprobante ;;
  }

  dimension: provincia_iibbcomprobante {
    type: string
    sql: ${TABLE}.ProvinciaIIBBComprobante ;;
  }

  dimension: pvcomprobante {
    type: number
    sql: ${TABLE}.PVComprobante ;;
  }

  dimension: razon_social_comprobante {
    type: string
    sql: ${TABLE}.RazonSocialComprobante ;;
  }

  dimension: referenciacomprobante {
    type: string
    sql: ${TABLE}.referenciacomprobante ;;
  }

  dimension: resultado_fiscal_comprobante {
    type: number
    sql: ${TABLE}.ResultadoFiscalComprobante ;;
  }

  dimension: retieneiibbcomprobante {
    type: number
    sql: ${TABLE}.retieneiibbcomprobante ;;
  }

  dimension: tipo_comprobante {
    type: string
    sql: ${TABLE}.TipoComprobante ;;
  }

  dimension: tipo_doc_comprobante {
    type: number
    sql: ${TABLE}.TipoDocComprobante ;;
  }

  dimension: usuariomlcomprobante {
    type: string
    sql: ${TABLE}.usuariomlcomprobante ;;
  }

  dimension: uuidcomprobante {
    type: string
    sql: ${TABLE}.UUIDComprobante ;;
  }

  dimension: venta_orcomprobante {
    type: number
    sql: ${TABLE}.VentaORComprobante ;;
  }

  dimension: venta_otcomprobante {
    type: number
    sql: ${TABLE}.VentaOTComprobante ;;
  }

  dimension: venta_vehiculo_comprobante {
    type: number
    sql: ${TABLE}.VentaVehiculoComprobante ;;
  }
  measure: count {
    type: count
  }
}
