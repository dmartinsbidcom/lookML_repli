# The name of this view in Looker is "Bostmovimientos"
view: bostmovimientos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bidcombo.bostmovimientos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cantidad Stock Bost Movimiento" in Explore.

  dimension: cantidad_stock_bost_movimiento {
    type: number
    sql: ${TABLE}.CantidadStockBOStMovimiento ;;
  }

  dimension: cantidad_venta_bost_movimiento {
    type: number
    sql: ${TABLE}.CantidadVentaBOStMovimiento ;;
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

  dimension: estado_bo_st_movimiento {
    type: number
    sql: ${TABLE}.EstadoBoStMovimiento ;;
  }

  dimension: fecha_bost_movimiento {
    type: number
    sql: ${TABLE}.FechaBOStMovimiento ;;
  }

  dimension: id_bo_reparacion {
    type: number
    sql: ${TABLE}.idBoReparacion ;;
  }

  dimension: id_bocomprobante {
    type: number
    sql: ${TABLE}.idBOComprobante ;;
  }

  dimension: id_bodep_ubicacion {
    type: number
    sql: ${TABLE}.idBODepUbicacion ;;
  }

  dimension: id_bodeposito {
    type: number
    sql: ${TABLE}.idBODeposito ;;
  }

  dimension: id_boproducto {
    type: number
    sql: ${TABLE}.idBOProducto ;;
  }

  dimension: id_bost_movimiento {
    type: number
    sql: ${TABLE}.idBOStMovimiento ;;
  }

  dimension: id_botipo_st_movimiento {
    type: number
    sql: ${TABLE}.idBOTipoStMovimiento ;;
  }

  dimension: id_bousuario_alta {
    type: number
    sql: ${TABLE}.idBOUsuarioAlta ;;
  }

  dimension: impuesto_interno_bost_movimiento {
    type: number
    sql: ${TABLE}.ImpuestoInternoBOStMovimiento ;;
  }

  dimension: mcid_comprobante_item {
    type: number
    sql: ${TABLE}.MCidComprobanteItem ;;
  }

  dimension: meses_gtia_bost_movimiento {
    type: number
    sql: ${TABLE}.MesesGtiaBOStMovimiento ;;
  }

  dimension: precio_bost_movimiento {
    type: number
    sql: ${TABLE}.PrecioBOStMovimiento ;;
  }
  measure: count {
    type: count
  }
}
