# The name of this view in Looker is "Ds Master2foretec Admdefpantallafacturacion"
view: ds_master2foretec_admdefpantallafacturacion {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2foretec.admdefpantallafacturacion` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Anula Factura Def Pant Fc" in Explore.

  dimension: anula_factura_def_pant_fc {
    type: number
    sql: ${TABLE}.AnulaFacturaDefPantFc ;;
  }

  dimension: calcula_impuestos_def_pant_fc {
    type: number
    sql: ${TABLE}.CalculaImpuestosDefPantFc ;;
  }

  dimension: calcula_ncx_bonif_aplica_def_pant_fc {
    type: number
    sql: ${TABLE}.CalculaNCxBonifAplicaDefPantFc ;;
  }

  dimension: calcula_ncx_bonif_def_pant_fc {
    type: number
    sql: ${TABLE}.CalculaNCxBonifDefPantFc ;;
  }

  dimension: cant_max_items_def_pant_fc {
    type: number
    sql: ${TABLE}.CantMaxItemsDefPantFc ;;
  }

  dimension: cant_max_por_item_def_pant_fc {
    type: number
    sql: ${TABLE}.CantMaxPorItemDefPantFc ;;
  }

  dimension: ccdef_pant_fc {
    type: number
    sql: ${TABLE}.CCDefPantFc ;;
  }

  dimension: cdo_def_pant_fc {
    type: number
    sql: ${TABLE}.CdoDefPantFc ;;
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

  dimension: id_cuenta_de_mail {
    type: number
    sql: ${TABLE}.idCuentaDeMail ;;
  }

  dimension: id_def_cc {
    type: number
    sql: ${TABLE}.IdDefCC ;;
  }

  dimension: id_def_comprobante {
    type: number
    sql: ${TABLE}.IdDefComprobante ;;
  }

  dimension: id_def_pant_fc {
    type: number
    sql: ${TABLE}.idDefPantFc ;;
  }

  dimension: id_moneda {
    type: number
    sql: ${TABLE}.idMoneda ;;
  }

  dimension: id_st_lista_precios {
    type: number
    sql: ${TABLE}.IdStListaPrecios ;;
  }

  dimension: id_sucursal {
    type: number
    sql: ${TABLE}.idSucursal ;;
  }

  dimension: l1_observaciones_def_pant_fc {
    type: string
    sql: ${TABLE}.L1ObservacionesDefPantFc ;;
  }

  dimension: l2_observaciones_def_pant_fc {
    type: string
    sql: ${TABLE}.L2ObservacionesDefPantFc ;;
  }

  dimension: l3_observaciones_def_pant_fc {
    type: string
    sql: ${TABLE}.L3ObservacionesDefPantFc ;;
  }

  dimension: l4_observaciones_def_pant_fc {
    type: string
    sql: ${TABLE}.L4ObservacionesDefPantFc ;;
  }

  dimension: l5_observaciones_def_pant_fc {
    type: string
    sql: ${TABLE}.L5ObservacionesDefPantFc ;;
  }

  dimension: mas_parametros_def_pant_fc {
    type: string
    sql: ${TABLE}.MasParametrosDefPantFc ;;
  }

  dimension: mi_py_medef_pant_fc {
    type: number
    sql: ${TABLE}.MiPyMEDefPantFc ;;
  }

  dimension: obliga_vdor_def_pant_fc {
    type: number
    sql: ${TABLE}.ObligaVdorDefPantFc ;;
  }

  dimension: ordef_pant_fc {
    type: number
    sql: ${TABLE}.ORDefPantFc ;;
  }

  dimension: otdef_pant_fc {
    type: number
    sql: ${TABLE}.OTDefPantFc ;;
  }

  dimension: porc_recarga_def_pant_fc {
    type: number
    sql: ${TABLE}.PorcRecargaDefPantFc ;;
  }

  dimension: puede_cambiar_fecha_def_pant_fc {
    type: number
    sql: ${TABLE}.PuedeCambiarFechaDefPantFc ;;
  }

  dimension: punto_venta_def_pant_fc {
    type: number
    sql: ${TABLE}.PuntoVentaDefPantFc ;;
  }

  dimension: pvta_def_pant_fc {
    type: number
    sql: ${TABLE}.PVtaDefPantFc ;;
  }

  dimension: rm_con_fc_previa_def_pant_fc {
    type: number
    sql: ${TABLE}.RmConFcPreviaDefPantFc ;;
  }

  dimension: rmdef_pant_fc {
    type: number
    sql: ${TABLE}.RMDefPantFc ;;
  }

  dimension: stock_def_pant_fc {
    type: number
    sql: ${TABLE}.StockDefPantFc ;;
  }

  dimension: tcdef_pant_fc {
    type: number
    sql: ${TABLE}.TCDefPantFc ;;
  }

  dimension: tipo_comprobante_def_pant_fc {
    type: number
    sql: ${TABLE}.TipoComprobanteDefPantFc ;;
  }

  dimension: varios_def_pant_fc {
    type: number
    sql: ${TABLE}.VariosDefPantFc ;;
  }

  dimension: vehiculos_def_pant_fc {
    type: number
    sql: ${TABLE}.VehiculosDefPantFc ;;
  }

  dimension: x_defecto_ccdef_pant_fc {
    type: number
    sql: ${TABLE}.xDefectoCCDefPantFc ;;
  }
  measure: count {
    type: count
  }
}
