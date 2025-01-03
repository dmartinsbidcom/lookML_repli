# The name of this view in Looker is "Ds Master2cabainnov Admimputaciones"
view: ds_master2cabainnov_admimputaciones {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2cabainnov.admimputaciones` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cambio Imputacion" in Explore.

  dimension: cambio_imputacion {
    type: number
    sql: ${TABLE}.CambioImputacion ;;
  }

  dimension: cantidad_imputacion {
    type: number
    sql: ${TABLE}.CantidadImputacion ;;
  }

  dimension: cantidad_ocitem {
    type: number
    sql: ${TABLE}.CantidadOCItem ;;
  }

  dimension: cod_jurisd_iibbimputacion {
    type: number
    sql: ${TABLE}.CodJurisdIIBBImputacion ;;
  }

  dimension: codigo_pctas {
    type: string
    sql: ${TABLE}.CodigoPCtas ;;
  }

  dimension: concepto_imputacion {
    type: string
    sql: ${TABLE}.ConceptoImputacion ;;
  }

  dimension: contrapartida_imputacion {
    type: number
    sql: ${TABLE}.ContrapartidaImputacion ;;
  }

  dimension: control_extracto_imputacion {
    type: number
    sql: ${TABLE}.ControlExtractoImputacion ;;
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

  dimension: en_libro_ivaimputacion {
    type: string
    sql: ${TABLE}.EnLibroIVAImputacion ;;
  }

  dimension: fecha_ultima_aplicacion_imputacion {
    type: number
    sql: ${TABLE}.FechaUltimaAplicacionImputacion ;;
  }

  dimension: fecha_vencimiento_imputacion {
    type: number
    sql: ${TABLE}.FechaVencimientoImputacion ;;
  }

  dimension: id_agrupa_ccosto_imputacion {
    type: number
    sql: ${TABLE}.idAgrupaCCostoImputacion ;;
  }

  dimension: id_ccosto {
    type: number
    sql: ${TABLE}.idCCosto ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.IdComprobante ;;
  }

  dimension: id_imputacion {
    type: number
    sql: ${TABLE}.IdImputacion ;;
  }

  dimension: id_imputacion_aplicada {
    type: number
    sql: ${TABLE}.IdImputacionAplicada ;;
  }

  dimension: id_moneda {
    type: number
    sql: ${TABLE}.IdMoneda ;;
  }

  dimension: id_ocitem {
    type: number
    sql: ${TABLE}.idOCItem ;;
  }

  dimension: id_otcertificacion {
    type: number
    sql: ${TABLE}.IdOTCertificacion ;;
  }

  dimension: id_otficha {
    type: number
    sql: ${TABLE}.IdOTFicha ;;
  }

  dimension: id_otsub_contrato {
    type: number
    sql: ${TABLE}.idOTSubContrato ;;
  }

  dimension: id_ottb_gasto {
    type: number
    sql: ${TABLE}.idOTTbGasto ;;
  }

  dimension: id_rel_caja_valores {
    type: number
    sql: ${TABLE}.idRelCajaValores ;;
  }

  dimension: id_rel_ccdomicilio {
    type: number
    sql: ${TABLE}.IdRelCCDomicilio ;;
  }

  dimension: id_ta_or {
    type: number
    sql: ${TABLE}.idTaOR ;;
  }

  dimension: id_tcvehiculo {
    type: number
    sql: ${TABLE}.idTCVehiculo ;;
  }

  dimension: id_un_boleto {
    type: number
    sql: ${TABLE}.idUnBoleto ;;
  }

  dimension: id_un_unidad {
    type: number
    sql: ${TABLE}.idUnUnidad ;;
  }

  dimension: idoperacionsinc {
    type: number
    sql: ${TABLE}.idoperacionsinc ;;
  }

  dimension: idretgciaactividad {
    type: number
    sql: ${TABLE}.idretgciaactividad ;;
  }

  dimension: importe_imputacion {
    type: number
    sql: ${TABLE}.ImporteImputacion ;;
  }

  dimension: importe_meimputacion {
    type: number
    sql: ${TABLE}.ImporteMEImputacion ;;
  }

  dimension: libro_ivaimputacion {
    type: number
    sql: ${TABLE}.LibroIVAImputacion ;;
  }

  dimension: mas_datos_imputacion {
    type: string
    sql: ${TABLE}.MasDatosImputacion ;;
  }

  dimension: no_despacho_imputacion {
    type: number
    sql: ${TABLE}.NoDespachoImputacion ;;
  }

  dimension: nroitemauxiliarimputacion {
    type: number
    sql: ${TABLE}.nroitemauxiliarimputacion ;;
  }

  dimension: saldo_imputacion {
    type: number
    sql: ${TABLE}.SaldoImputacion ;;
  }

  dimension: tasa_ivaimputacion {
    type: number
    sql: ${TABLE}.TasaIVAImputacion ;;
  }

  dimension: tipo_imputacion {
    type: number
    sql: ${TABLE}.TipoImputacion ;;
  }
  measure: count {
    type: count
  }
}
