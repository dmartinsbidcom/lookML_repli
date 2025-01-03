# The name of this view in Looker is "Ds Master2 Stmovimientos"
view: ds_master2_stmovimientos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2.stmovimientos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Alto St Movimiento" in Explore.

  dimension: alto_st_movimiento {
    type: number
    sql: ${TABLE}.AltoStMovimiento ;;
  }

  dimension: ancho_st_movimiento {
    type: number
    sql: ${TABLE}.AnchoStMovimiento ;;
  }

  dimension: cant_pend_control_st_movimiento {
    type: number
    sql: ${TABLE}.CantPendControlStMovimiento ;;
  }

  dimension: cant_pend_rm_st_movimiento {
    type: number
    sql: ${TABLE}.CantPendRmStMovimiento ;;
  }

  dimension: cantidad_st_movimiento {
    type: number
    sql: ${TABLE}.CantidadStMovimiento ;;
  }

  dimension: costo_sin_desc_st_movimiento {
    type: number
    sql: ${TABLE}.CostoSinDescStMovimiento ;;
  }

  dimension: costo_st_movimiento {
    type: number
    sql: ${TABLE}.CostoStMovimiento ;;
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

  dimension: desc1_st_movimiento {
    type: number
    sql: ${TABLE}.Desc1StMovimiento ;;
  }

  dimension: desc2_st_movimiento {
    type: number
    sql: ${TABLE}.Desc2StMovimiento ;;
  }

  dimension: desc3_st_movimiento {
    type: number
    sql: ${TABLE}.Desc3StMovimiento ;;
  }

  dimension: despacho_st_movimiento {
    type: string
    sql: ${TABLE}.DespachoStMovimiento ;;
  }

  dimension: fecha_vto_lote_st_movimiento {
    type: number
    sql: ${TABLE}.FechaVtoLoteStMovimiento ;;
  }

  dimension: id_adm_detalle_vta {
    type: number
    sql: ${TABLE}.IdAdmDetalleVta ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.IdComprobante ;;
  }

  dimension: id_imputacion {
    type: number
    sql: ${TABLE}.IdImputacion ;;
  }

  dimension: id_imputacion_contrapartida {
    type: number
    sql: ${TABLE}.IdImputacionContrapartida ;;
  }

  dimension: id_ocitem {
    type: number
    sql: ${TABLE}.IdOCItem ;;
  }

  dimension: id_prestamo_devuelto_st_movimiento {
    type: number
    sql: ${TABLE}.IdPrestamoDevueltoStMovimiento ;;
  }

  dimension: id_rel_ccdomicilio {
    type: number
    sql: ${TABLE}.IdRelCCDomicilio ;;
  }

  dimension: id_st_deposito {
    type: number
    sql: ${TABLE}.IdStDeposito ;;
  }

  dimension: id_st_despacho {
    type: number
    sql: ${TABLE}.IdStDespacho ;;
  }

  dimension: id_st_item_ocp {
    type: number
    sql: ${TABLE}.IdStItemOCp ;;
  }

  dimension: id_st_item_pvta {
    type: number
    sql: ${TABLE}.IdStItemPVta ;;
  }

  dimension: id_st_movimiento {
    type: number
    sql: ${TABLE}.IdStMovimiento ;;
  }

  dimension: id_st_movimiento_devuelto {
    type: number
    sql: ${TABLE}.idStMovimientoDevuelto ;;
  }

  dimension: id_st_producto {
    type: number
    sql: ${TABLE}.IdStProducto ;;
  }

  dimension: id_st_rm_transito_items {
    type: number
    sql: ${TABLE}.idStRmTransitoItems ;;
  }

  dimension: impuestointernostmovimiento {
    type: number
    sql: ${TABLE}.impuestointernostmovimiento ;;
  }

  dimension: lote_st_movimiento {
    type: string
    sql: ${TABLE}.LoteStMovimiento ;;
  }

  dimension: prestamo_st_movimiento {
    type: number
    sql: ${TABLE}.PrestamoStMovimiento ;;
  }

  dimension: saldo_prestamo_st_movimiento {
    type: number
    sql: ${TABLE}.SaldoPrestamoStMovimiento ;;
  }

  dimension: tasa_ivast_movimiento {
    type: number
    sql: ${TABLE}.TasaIVAStMovimiento ;;
  }

  dimension: tipo_st_movimiento {
    type: string
    sql: ${TABLE}.TipoStMovimiento ;;
  }

  dimension: venta_sin_desc_st_movimiento {
    type: number
    sql: ${TABLE}.VentaSinDescStMovimiento ;;
  }

  dimension: venta_st_movimiento {
    type: number
    sql: ${TABLE}.VentaStMovimiento ;;
  }
  measure: count {
    type: count
  }
}
