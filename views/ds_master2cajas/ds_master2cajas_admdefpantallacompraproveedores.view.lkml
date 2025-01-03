# The name of this view in Looker is "Ds Master2cajas Admdefpantallacompraproveedores"
view: ds_master2cajas_admdefpantallacompraproveedores {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2cajas.admdefpantallacompraproveedores` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Aplica Retencion Iibbdef Pantalla Comprobante" in Explore.

  dimension: aplica_retencion_iibbdef_pantalla_comprobante {
    type: number
    sql: ${TABLE}.AplicaRetencionIIBBDefPantallaComprobante ;;
  }

  dimension: combustible_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.CombustibleDefPantallaComprobante ;;
  }

  dimension: contrapartida_ccdef_pantalla_comprobante {
    type: number
    sql: ${TABLE}.ContrapartidaCCDefPantallaComprobante ;;
  }

  dimension: contrapartida_imputacion_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.ContrapartidaImputacionDefPantallaComprobante ;;
  }

  dimension: cta1_verifica_st_def_pantalla_comprobante {
    type: string
    sql: ${TABLE}.Cta1VerificaStDefPantallaComprobante ;;
  }

  dimension: cta2_verifica_st_def_pantalla_comprobante {
    type: string
    sql: ${TABLE}.Cta2VerificaStDefPantallaComprobante ;;
  }

  dimension: cta3_verifica_st_def_pantalla_comprobante {
    type: string
    sql: ${TABLE}.Cta3VerificaStDefPantallaComprobante ;;
  }

  dimension: cta4_verifica_st_def_pantalla_comprobante {
    type: string
    sql: ${TABLE}.Cta4VerificaStDefPantallaComprobante ;;
  }

  dimension: cta5_verifica_st_def_pantalla_comprobante {
    type: string
    sql: ${TABLE}.Cta5VerificaStDefPantallaComprobante ;;
  }

  dimension: cta_contrapartida_def_pantalla_comprobante {
    type: string
    sql: ${TABLE}.CtaContrapartidaDefPantallaComprobante ;;
  }

  dimension: cta_impuesto1_def_pantalla_comprobante {
    type: string
    sql: ${TABLE}.CtaImpuesto1DefPantallaComprobante ;;
  }

  dimension: cta_impuesto2_def_pantalla_comprobante {
    type: string
    sql: ${TABLE}.CtaImpuesto2DefPantallaComprobante ;;
  }

  dimension: cta_impuesto3_def_pantalla_comprobante {
    type: string
    sql: ${TABLE}.CtaImpuesto3DefPantallaComprobante ;;
  }

  dimension: cta_impuesto4_def_pantalla_comprobante {
    type: string
    sql: ${TABLE}.CtaImpuesto4DefPantallaComprobante ;;
  }

  dimension: cta_impuesto5_def_pantalla_comprobante {
    type: string
    sql: ${TABLE}.CtaImpuesto5DefPantallaComprobante ;;
  }

  dimension: cta_impuesto6_def_pantalla_comprobante {
    type: string
    sql: ${TABLE}.CtaImpuesto6DefPantallaComprobante ;;
  }

  dimension: cta_impuesto7_def_pantalla_comprobante {
    type: string
    sql: ${TABLE}.CtaImpuesto7DefPantallaComprobante ;;
  }

  dimension: cta_impuesto8_def_pantalla_comprobante {
    type: string
    sql: ${TABLE}.CtaImpuesto8DefPantallaComprobante ;;
  }

  dimension: cta_impuesto9_def_pantalla_comprobante {
    type: string
    sql: ${TABLE}.CtaImpuesto9DefPantallaComprobante ;;
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

  dimension: id_def_cc {
    type: number
    sql: ${TABLE}.IdDefCC ;;
  }

  dimension: id_def_comprobante {
    type: number
    sql: ${TABLE}.IdDefComprobante ;;
  }

  dimension: id_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.IdDefPantallaComprobante ;;
  }

  dimension: libro_ivaimp1_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.LibroIVAImp1DefPantallaComprobante ;;
  }

  dimension: libro_ivaimp2_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.LibroIVAImp2DefPantallaComprobante ;;
  }

  dimension: libro_ivaimp3_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.LibroIVAImp3DefPantallaComprobante ;;
  }

  dimension: libro_ivaimp4_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.LibroIVAImp4DefPantallaComprobante ;;
  }

  dimension: libro_ivaimp5_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.LibroIVAImp5DefPantallaComprobante ;;
  }

  dimension: libro_ivaimp6_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.LibroIVAImp6DefPantallaComprobante ;;
  }

  dimension: libro_ivaimp7_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.LibroIVAImp7DefPantallaComprobante ;;
  }

  dimension: libro_ivaimp8_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.LibroIVAImp8DefPantallaComprobante ;;
  }

  dimension: libro_ivaimp9_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.LibroIVAImp9DefPantallaComprobante ;;
  }

  dimension: medef_pantalla_comprobante {
    type: number
    sql: ${TABLE}.MEdefPantallaComprobante ;;
  }

  dimension: neto_compra_vehiculo_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.NetoCompraVehiculoDefPantallaComprobante ;;
  }

  dimension: neto_costo_vehiculo_propiodef_pantalla_comprobante {
    type: number
    sql: ${TABLE}.NetoCostoVehiculoPropiodefPantallaComprobante ;;
  }

  dimension: neto_gasto_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.NetoGastoDefPantallaComprobante ;;
  }

  dimension: neto_obra_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.NetoObraDefPantallaComprobante ;;
  }

  dimension: neto_ordef_pantalla_comprobante {
    type: number
    sql: ${TABLE}.NetoORDefPantallaComprobante ;;
  }

  dimension: neto_stock_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.NetoStockDefPantallaComprobante ;;
  }

  dimension: neto_vehiculo_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.NetoVehiculoDefPantallaComprobante ;;
  }

  dimension: neto_verifica_stock_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.NetoVerificaStockDefPantallaComprobante ;;
  }

  dimension: pide_activo_un_unidad_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.PideActivoUnUnidadDefPantallaComprobante ;;
  }

  dimension: pide_corresponsal_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.PideCorresponsalDefPantallaComprobante ;;
  }

  dimension: pide_expediente_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.PideExpedienteDefPantallaComprobante ;;
  }

  dimension: pide_fec_vto_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.PideFecVtoDefPantallaComprobante ;;
  }

  dimension: porc_neto1_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.PorcNeto1DefPantallaComprobante ;;
  }

  dimension: porc_neto2_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.PorcNeto2DefPantallaComprobante ;;
  }

  dimension: porc_neto3_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.PorcNeto3DefPantallaComprobante ;;
  }

  dimension: porc_neto4_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.PorcNeto4DefPantallaComprobante ;;
  }

  dimension: porc_neto5_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.PorcNeto5DefPantallaComprobante ;;
  }

  dimension: porc_neto6_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.PorcNeto6DefPantallaComprobante ;;
  }

  dimension: porc_neto7_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.PorcNeto7DefPantallaComprobante ;;
  }

  dimension: porc_neto8_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.PorcNeto8DefPantallaComprobante ;;
  }

  dimension: porc_neto9_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.PorcNeto9DefPantallaComprobante ;;
  }

  dimension: puede_cambiar_ccdef_pantalla_comprobante {
    type: number
    sql: ${TABLE}.PuedeCambiarCCDefPantallaComprobante ;;
  }

  dimension: sin_contrapartida_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.SinContrapartidaDefPantallaComprobante ;;
  }

  dimension: tipo_comprobante_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.TipoComprobanteDefPantallaComprobante ;;
  }

  dimension: tipo_unidad_def_pantalla_comprobante {
    type: string
    sql: ${TABLE}.TipoUnidadDefPantallaComprobante ;;
  }

  dimension: vincula_ocp_def_pantalla_comprobante {
    type: number
    sql: ${TABLE}.VinculaOCpDefPantallaComprobante ;;
  }
  measure: count {
    type: count
  }
}
