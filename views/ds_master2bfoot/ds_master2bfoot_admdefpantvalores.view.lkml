# The name of this view in Looker is "Ds Master2bfoot Admdefpantvalores"
view: ds_master2bfoot_admdefpantvalores {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bfoot.admdefpantvalores` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ccal Debe Con Obra" in Explore.

  dimension: ccal_debe_con_obra {
    type: number
    sql: ${TABLE}.CCalDebeConObra ;;
  }

  dimension: ccal_haber_con_obra {
    type: number
    sql: ${TABLE}.CCalHaberConObra ;;
  }

  dimension: costo_tcvehiculo_debe_def_pan_val {
    type: number
    sql: ${TABLE}.CostoTCVehiculoDebeDefPanVal ;;
  }

  dimension: costo_tcvehiculo_haber_def_pan_val {
    type: number
    sql: ${TABLE}.CostoTCVehiculoHaberDefPanVal ;;
  }

  dimension: cuenta_corriente_def_pan_val {
    type: number
    sql: ${TABLE}.CuentaCorrienteDefPanVal ;;
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

  dimension: fec_vig_por_esp_empresa_exenta_iibb {
    type: number
    sql: ${TABLE}.FecVigPorEspEmpresaExentaIIBB ;;
  }

  dimension: formato_envia_por_mail_def_pan_val {
    type: number
    sql: ${TABLE}.FormatoEnviaPorMailDefPanVal ;;
  }

  dimension: id_def_cc {
    type: number
    sql: ${TABLE}.idDefCC ;;
  }

  dimension: id_def_comprobante {
    type: number
    sql: ${TABLE}.idDefComprobante ;;
  }

  dimension: id_def_pant_valores {
    type: number
    sql: ${TABLE}.idDefPantValores ;;
  }

  dimension: id_numerador_ret_gcias_def_pan_val {
    type: number
    sql: ${TABLE}.idNumeradorRetGciasDefPanVal ;;
  }

  dimension: id_numerador_ret_iibbdef_pan_val {
    type: number
    sql: ${TABLE}.idNumeradorRetIIBBDefPanVal ;;
  }

  dimension: permite_aplicar_ccdef_pan_val {
    type: number
    sql: ${TABLE}.PermiteAplicarCCDefPanVal ;;
  }

  dimension: permite_ccal_debe_def_pan_val {
    type: number
    sql: ${TABLE}.PermiteCCAlDebeDefPanVal ;;
  }

  dimension: permite_ccal_haber_def_pan_val {
    type: number
    sql: ${TABLE}.PermiteCCAlHaberDefPanVal ;;
  }

  dimension: permite_entradas_def_pan_val {
    type: number
    sql: ${TABLE}.PermiteEntradasDefPanVal ;;
  }

  dimension: permite_imp_debe_def_pan_val {
    type: number
    sql: ${TABLE}.PermiteImpDebeDefPanVal ;;
  }

  dimension: permite_imp_haber_def_pan_val {
    type: number
    sql: ${TABLE}.PermiteImpHaberDefPanVal ;;
  }

  dimension: permite_retencion_gcias_def_pan_val {
    type: number
    sql: ${TABLE}.PermiteRetencionGciasDefPanVal ;;
  }

  dimension: permite_retencion_iibbdef_pan_val {
    type: number
    sql: ${TABLE}.PermiteRetencionIIBBDefPanVal ;;
  }

  dimension: permite_retenciones_def_pan_val {
    type: number
    sql: ${TABLE}.PermiteRetencionesDefPanVal ;;
  }

  dimension: permite_salidas_def_pan_val {
    type: number
    sql: ${TABLE}.PermiteSalidasDefPanVal ;;
  }

  dimension: permite_transferencias_def_pan_val {
    type: number
    sql: ${TABLE}.PermiteTransferenciasDefPanVal ;;
  }

  dimension: pvdef_pan_val {
    type: number
    sql: ${TABLE}.PVDefPanVal ;;
  }

  dimension: resta_obra_def_pan_val {
    type: number
    sql: ${TABLE}.RestaObraDefPanVal ;;
  }

  dimension: sin_contrapartida_def_pan_val {
    type: number
    sql: ${TABLE}.SinContrapartidaDefPanVal ;;
  }

  dimension: suma_obra_def_pan_val {
    type: number
    sql: ${TABLE}.SumaObraDefPanVal ;;
  }

  dimension: vincular_agenda_def_pan_val {
    type: number
    sql: ${TABLE}.VincularAgendaDefPanVal ;;
  }
  measure: count {
    type: count
  }
}
