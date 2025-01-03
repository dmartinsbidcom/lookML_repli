# The name of this view in Looker is "Ds Master2calitec Admdetallevta"
view: ds_master2calitec_admdetallevta {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2calitec.admdetallevta` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cant Pend Rm Item Fc Varios" in Explore.

  dimension: cant_pend_rm_item_fc_varios {
    type: number
    sql: ${TABLE}.CantPendRmItemFcVarios ;;
  }

  dimension: cantidad_detalle_vta {
    type: number
    sql: ${TABLE}.CantidadDetalleVta ;;
  }

  dimension: codigo_detalle_vta {
    type: string
    sql: ${TABLE}.CodigoDetalleVta ;;
  }

  dimension: codigo_dropshipping_detalle_vta {
    type: string
    sql: ${TABLE}.CodigoDropshippingDetalleVta ;;
  }

  dimension: concepto_detalle_vta {
    type: string
    sql: ${TABLE}.ConceptoDetalleVta ;;
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

  dimension: descampliadadetallevta {
    type: string
    sql: ${TABLE}.descampliadadetallevta ;;
  }

  dimension: descuento_detalle_vta {
    type: number
    sql: ${TABLE}.DescuentoDetalleVta ;;
  }

  dimension: id_adm_comprobante {
    type: number
    sql: ${TABLE}.idAdmComprobante ;;
  }

  dimension: id_adm_detalle_vta {
    type: number
    sql: ${TABLE}.idAdmDetalleVta ;;
  }

  dimension: id_adm_detalle_vta_anulado {
    type: number
    sql: ${TABLE}.idAdmDetalleVtaAnulado ;;
  }

  dimension: id_admdetalle_vta_rm {
    type: number
    sql: ${TABLE}.idAdmdetalleVtaRm ;;
  }

  dimension: id_imputacion {
    type: number
    sql: ${TABLE}.idImputacion ;;
  }

  dimension: id_item_fc_varios {
    type: number
    sql: ${TABLE}.idItemFcVarios ;;
  }

  dimension: id_st_movimiento_rm {
    type: number
    sql: ${TABLE}.idStMovimientoRm ;;
  }

  dimension: id_st_presupuesto_item {
    type: number
    sql: ${TABLE}.idStPresupuestoItem ;;
  }

  dimension: id_ta_or {
    type: number
    sql: ${TABLE}.idTaOR ;;
  }

  dimension: id_un_unidad {
    type: number
    sql: ${TABLE}.idUnUnidad ;;
  }

  dimension: numero_despacho_detalle_vta {
    type: string
    sql: ${TABLE}.NumeroDespachoDetalleVta ;;
  }

  dimension: precio_detalle_vta {
    type: number
    sql: ${TABLE}.PrecioDetalleVta ;;
  }

  dimension: precio_l4_temp_w {
    type: number
    sql: ${TABLE}.PrecioL4TempW ;;
  }

  dimension: precio_temp_w {
    type: number
    sql: ${TABLE}.PrecioTempW ;;
  }

  dimension: tasa_ivadetalle_vta {
    type: number
    sql: ${TABLE}.TasaIVADetalleVta ;;
  }

  dimension: texto_auxiliar_detalle_vta {
    type: string
    sql: ${TABLE}.TextoAuxiliarDetalleVta ;;
  }
  measure: count {
    type: count
  }
}
