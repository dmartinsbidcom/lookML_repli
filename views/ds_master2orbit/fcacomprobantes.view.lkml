# The name of this view in Looker is "Fcacomprobantes"
view: fcacomprobantes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2orbit.fcacomprobantes` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Aux M2 ID Comprobante" in Explore.

  dimension: aux_m2_id_comprobante {
    type: number
    sql: ${TABLE}.AuxM2IdComprobante ;;
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

  dimension: datos_fc_acomprobante {
    type: string
    sql: ${TABLE}.DatosFcAComprobante ;;
  }

  dimension: fecha_fc_acomprobante {
    type: number
    sql: ${TABLE}.FechaFcAComprobante ;;
  }

  dimension: fecha_proceso_fca_comprobante {
    type: number
    sql: ${TABLE}.FechaProcesoFcaComprobante ;;
  }

  dimension: id_estado_conciliacion {
    type: number
    sql: ${TABLE}.idEstadoConciliacion ;;
  }

  dimension: id_fc_acomprobante {
    type: number
    sql: ${TABLE}.idFcAComprobante ;;
  }

  dimension: id_fc_aestado {
    type: number
    sql: ${TABLE}.idFcAEstado ;;
  }

  dimension: id_fc_afuente_venta {
    type: number
    sql: ${TABLE}.idFcAFuenteVenta ;;
  }

  dimension: id_fc_aoperacion {
    type: number
    sql: ${TABLE}.idFcAOperacion ;;
  }

  dimension: importe_cvaper {
    type: number
    sql: ${TABLE}.ImporteCVAper ;;
  }

  dimension: importe_cvba_pro {
    type: number
    sql: ${TABLE}.ImporteCVBaPro ;;
  }

  dimension: importe_cvbna {
    type: number
    sql: ${TABLE}.ImporteCVBNA ;;
  }

  dimension: importe_cvclic {
    type: number
    sql: ${TABLE}.ImporteCVClic ;;
  }

  dimension: importe_cvpay_way {
    type: number
    sql: ${TABLE}.ImporteCVPayWay ;;
  }

  dimension: intentos_fc_acomprobante {
    type: number
    sql: ${TABLE}.IntentosFcAComprobante ;;
  }

  dimension: items_fc_acomprobante {
    type: string
    sql: ${TABLE}.ItemsFcAComprobante ;;
  }

  dimension: m2_db_fca_comprobante {
    type: string
    sql: ${TABLE}.M2DbFcaComprobante ;;
  }

  dimension: m2id_comprobante {
    type: number
    sql: ${TABLE}.M2idComprobante ;;
  }

  dimension: mcid_comprobante {
    type: number
    sql: ${TABLE}.MCidComprobante ;;
  }

  dimension: nro_comp_externo_fc_acomprobante {
    type: string
    sql: ${TABLE}.NroCompExternoFcAComprobante ;;
  }

  dimension: nro_oper_pagos_fc_acomprobante {
    type: string
    sql: ${TABLE}.NroOperPagosFcAComprobante ;;
  }
  measure: count {
    type: count
  }
}
