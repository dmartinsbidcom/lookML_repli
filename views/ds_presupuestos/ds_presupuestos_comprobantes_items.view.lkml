# The name of this view in Looker is "Ds Presupuestos Comprobantes Items"
view: ds_presupuestos_comprobantes_items {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.comprobantes_items` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cantidad Comprobante Item" in Explore.

  dimension: cantidad_comprobante_item {
    type: number
    sql: ${TABLE}.cantidadComprobanteItem ;;
  }

  dimension: codigo_comprobante_item {
    type: string
    sql: ${TABLE}.codigoComprobanteItem ;;
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

  dimension: descripcion_comprobante_item {
    type: string
    sql: ${TABLE}.descripcionComprobanteItem ;;
  }

  dimension: descuenta_stock_comprobante_item {
    type: number
    sql: ${TABLE}.descuentaStockComprobanteItem ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.idComprobante ;;
  }

  dimension: id_comprobante_item {
    type: number
    sql: ${TABLE}.idComprobanteItem ;;
  }

  dimension: id_deposito {
    type: number
    sql: ${TABLE}.idDeposito ;;
  }

  dimension: id_producto {
    type: number
    sql: ${TABLE}.idProducto ;;
  }

  dimension: id_producto_kit {
    type: number
    sql: ${TABLE}.idProductoKit ;;
  }

  dimension: impuestos_internos_comprobante_item {
    type: number
    sql: ${TABLE}.impuestosInternosComprobanteItem ;;
  }

  dimension: meses_garantia_comprobante_item {
    type: number
    sql: ${TABLE}.mesesGarantiaComprobanteItem ;;
  }

  dimension: porcentaje_ivacomprobante_item {
    type: number
    sql: ${TABLE}.porcentajeIVAComprobanteItem ;;
  }

  dimension: precio_comprobante_item {
    type: number
    sql: ${TABLE}.precioComprobanteItem ;;
  }

  dimension: total_comprobante_item {
    type: number
    sql: ${TABLE}.totalComprobanteItem ;;
  }
  measure: count {
    type: count
  }
}
