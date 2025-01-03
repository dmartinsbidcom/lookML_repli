# The name of this view in Looker is "Ds Master2bfoot Stproductos"
view: ds_master2bfoot_stproductos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bfoot.stproductos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cambio Actualizacion Precio St Producto" in Explore.

  dimension: cambio_actualizacion_precio_st_producto {
    type: number
    sql: ${TABLE}.CambioActualizacionPrecioStProducto ;;
  }

  dimension: cantidad_vendida_st_producto {
    type: number
    sql: ${TABLE}.CantidadVendidaStProducto ;;
  }

  dimension: clasif_auxiliar {
    type: number
    sql: ${TABLE}.ClasifAuxiliar ;;
  }

  dimension: codigo_equivalencia_st_producto {
    type: string
    sql: ${TABLE}.CodigoEquivalenciaStProducto ;;
  }

  dimension: codigo_origen_st_producto {
    type: string
    sql: ${TABLE}.CodigoOrigenStProducto ;;
  }

  dimension: codigo_pctas_activo {
    type: string
    sql: ${TABLE}.CodigoPCtasActivo ;;
  }

  dimension: codigo_pctas_costo {
    type: string
    sql: ${TABLE}.CodigoPCtasCosto ;;
  }

  dimension: codigo_pctas_venta {
    type: string
    sql: ${TABLE}.CodigoPCtasVenta ;;
  }

  dimension: codigo_st_producto {
    type: string
    sql: ${TABLE}.CodigoStProducto ;;
  }

  dimension: coef_conver_umst_producto {
    type: number
    sql: ${TABLE}.CoefConverUMStProducto ;;
  }

  dimension: coef_precio_kit_st_producto {
    type: number
    sql: ${TABLE}.CoefPrecioKitStProducto ;;
  }

  dimension: como_calcula_precio_kit_st_producto {
    type: number
    sql: ${TABLE}.ComoCalculaPrecioKitStProducto ;;
  }

  dimension: costo_promedio_st_producto {
    type: number
    sql: ${TABLE}.CostoPromedioStProducto ;;
  }

  dimension: costo_reposicion_historico_st_producto {
    type: number
    sql: ${TABLE}.CostoReposicionHistoricoStProducto ;;
  }

  dimension: costo_reposicion_mest_producto {
    type: number
    sql: ${TABLE}.CostoReposicionMEStProducto ;;
  }

  dimension: costo_reposicion_st_producto {
    type: number
    sql: ${TABLE}.CostoReposicionStProducto ;;
  }

  dimension: costo_ult_cp_historico_st_producto {
    type: number
    sql: ${TABLE}.CostoUltCpHistoricoStProducto ;;
  }

  dimension: costo_ultima_cp_mest_producto {
    type: number
    sql: ${TABLE}.CostoUltimaCpMEStProducto ;;
  }

  dimension: costo_ultima_cp_st_producto {
    type: number
    sql: ${TABLE}.CostoUltimaCpStProducto ;;
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

  dimension: datos_varios_st_producto {
    type: string
    sql: ${TABLE}.DatosVariosStProducto ;;
  }

  dimension: descripcion_st_producto {
    type: string
    sql: ${TABLE}.DescripcionStProducto ;;
  }

  dimension: desde_alto_st_producto {
    type: number
    sql: ${TABLE}.DesdeAltoStProducto ;;
  }

  dimension: desde_ancho_st_producto {
    type: number
    sql: ${TABLE}.DesdeAnchoStProducto ;;
  }

  dimension: fecha1er_movimiento_st_producto {
    type: number
    sql: ${TABLE}.Fecha1erMovimientoStProducto ;;
  }

  dimension: fecha_actualizacion_precio_st_producto {
    type: number
    sql: ${TABLE}.FechaActualizacionPrecioStProducto ;;
  }

  dimension: fecha_alta_st_producto {
    type: number
    sql: ${TABLE}.FechaAltaStProducto ;;
  }

  dimension: fecha_modificacion_st_producto {
    type: number
    sql: ${TABLE}.fechaModificacionStProducto ;;
  }

  dimension: fecha_ultima_venta_st_producto {
    type: number
    sql: ${TABLE}.FechaUltimaVentaStProducto ;;
  }

  dimension: hasta_alto_st_producto {
    type: number
    sql: ${TABLE}.HastaAltoStProducto ;;
  }

  dimension: hasta_ancho_st_producto {
    type: number
    sql: ${TABLE}.HastaAnchoStProducto ;;
  }

  dimension: id_empresa {
    type: number
    sql: ${TABLE}.IdEmpresa ;;
  }

  dimension: id_st_clasificacion_simple {
    type: number
    sql: ${TABLE}.idStClasificacionSimple ;;
  }

  dimension: id_st_marca {
    type: number
    sql: ${TABLE}.IdStMarca ;;
  }

  dimension: id_st_par_ct_def {
    type: number
    sql: ${TABLE}.idStParCtDef ;;
  }

  dimension: id_st_producto {
    type: number
    sql: ${TABLE}.IdStProducto ;;
  }

  dimension: importadostproducto {
    type: number
    sql: ${TABLE}.importadostproducto ;;
  }

  dimension: impuestointernostproducto {
    type: number
    sql: ${TABLE}.impuestointernostproducto ;;
  }

  dimension: inhabilitado_st_producto {
    type: number
    sql: ${TABLE}.InhabilitadoStProducto ;;
  }

  dimension: intervalo_medida_st_producto {
    type: number
    sql: ${TABLE}.IntervaloMedidaStProducto ;;
  }

  dimension: l4_coef_sl1_st_producto {
    type: number
    sql: ${TABLE}.L4CoefSL1StProducto ;;
  }

  dimension: medidas_st_producto {
    type: number
    sql: ${TABLE}.MedidasStProducto ;;
  }

  dimension: mercado_libre_st_producto {
    type: number
    sql: ${TABLE}.MercadoLibreStProducto ;;
  }

  dimension: mercado_libre_temp {
    type: number
    sql: ${TABLE}.MercadoLibreTEMP ;;
  }

  dimension: modo_act_l1_st_producto {
    type: number
    sql: ${TABLE}.ModoActL1StProducto ;;
  }

  dimension: modo_act_l2_st_producto {
    type: number
    sql: ${TABLE}.ModoActL2StProducto ;;
  }

  dimension: modo_act_l3_st_producto {
    type: number
    sql: ${TABLE}.ModoActL3StProducto ;;
  }

  dimension: modo_act_l4_st_producto {
    type: number
    sql: ${TABLE}.ModoActL4StProducto ;;
  }

  dimension: modo_act_l5_st_producto {
    type: number
    sql: ${TABLE}.ModoActL5StProducto ;;
  }

  dimension: ncmst_producto {
    type: string
    sql: ${TABLE}.NCMStProducto ;;
  }

  dimension: no_controla_stock_st_producto {
    type: number
    sql: ${TABLE}.NoControlaStockStProducto ;;
  }

  dimension: nombre_st_producto {
    type: string
    sql: ${TABLE}.NombreStProducto ;;
  }

  dimension: peso_st_producto {
    type: number
    sql: ${TABLE}.PesoStProducto ;;
  }

  dimension: pidedespachostproducto {
    type: number
    sql: ${TABLE}.pidedespachostproducto ;;
  }

  dimension: porc_util_lp1_st_producto {
    type: number
    sql: ${TABLE}.PorcUtilLP1StProducto ;;
  }

  dimension: porc_util_lp2_st_producto {
    type: number
    sql: ${TABLE}.PorcUtilLP2StProducto ;;
  }

  dimension: porc_util_lp3_st_producto {
    type: number
    sql: ${TABLE}.PorcUtilLP3StProducto ;;
  }

  dimension: porc_util_lp4_st_producto {
    type: number
    sql: ${TABLE}.PorcUtilLP4StProducto ;;
  }

  dimension: porc_util_lp5_st_producto {
    type: number
    sql: ${TABLE}.PorcUtilLP5StProducto ;;
  }

  dimension: precio_l2_st_producto {
    type: number
    sql: ${TABLE}.PrecioL2StProducto ;;
  }

  dimension: precio_l3_st_producto {
    type: number
    sql: ${TABLE}.PrecioL3StProducto ;;
  }

  dimension: precio_l4_st_producto {
    type: number
    sql: ${TABLE}.PrecioL4StProducto ;;
  }

  dimension: precio_l4_temp {
    type: number
    sql: ${TABLE}.PrecioL4TEMP ;;
  }

  dimension: precio_l4_temp_w {
    type: number
    sql: ${TABLE}.PrecioL4TempW ;;
  }

  dimension: precio_l5_st_producto {
    type: number
    sql: ${TABLE}.PrecioL5StProducto ;;
  }

  dimension: precio_oferta_st_producto {
    type: number
    sql: ${TABLE}.PrecioOfertaStProducto ;;
  }

  dimension: precio_st_producto {
    type: number
    sql: ${TABLE}.PrecioStProducto ;;
  }

  dimension: precio_temp {
    type: number
    sql: ${TABLE}.PrecioTEMP ;;
  }

  dimension: precio_temp_w {
    type: number
    sql: ${TABLE}.PrecioTempW ;;
  }

  dimension: punto_pedido_st_producto {
    type: number
    sql: ${TABLE}.PuntoPedidoStProducto ;;
  }

  dimension: rotacion_diaria_st_producto {
    type: number
    sql: ${TABLE}.RotacionDiariaStProducto ;;
  }

  dimension: st_maximo_st_producto {
    type: number
    sql: ${TABLE}.StMaximoStProducto ;;
  }

  dimension: st_minimo_st_producto {
    type: number
    sql: ${TABLE}.StMinimoStProducto ;;
  }

  dimension: stock_temp {
    type: number
    sql: ${TABLE}.StockTEMP ;;
  }

  dimension: sub_cla_auxiliar {
    type: number
    sql: ${TABLE}.SubClaAuxiliar ;;
  }

  dimension: tasa_ivast_producto {
    type: number
    sql: ${TABLE}.TasaIVAStProducto ;;
  }

  dimension: tiene_lote_st_producto {
    type: number
    sql: ${TABLE}.TieneLoteStProducto ;;
  }

  dimension: tiene_serie_st_producto {
    type: number
    sql: ${TABLE}.TieneSerieStProducto ;;
  }

  dimension: trazabilidad_st_producto {
    type: number
    sql: ${TABLE}.TrazabilidadStProducto ;;
  }

  dimension: unidad_medida_st_producto {
    type: string
    sql: ${TABLE}.UnidadMedidaStProducto ;;
  }

  dimension: ya_migro_stock {
    type: number
    sql: ${TABLE}.YaMigroStock ;;
  }
  measure: count {
    type: count
  }
}
