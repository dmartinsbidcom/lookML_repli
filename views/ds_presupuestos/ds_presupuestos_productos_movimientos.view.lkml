# The name of this view in Looker is "Ds Presupuestos Productos Movimientos"
view: ds_presupuestos_productos_movimientos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.productos_movimientos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cantidad Producto Movimiento" in Explore.

  dimension: cantidad_producto_movimiento {
    type: number
    sql: ${TABLE}.cantidadProductoMovimiento ;;
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
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_arribo_producto_movimiento {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaArriboProductoMovimiento ;;
  }

  dimension_group: fecha_salida_producto_movimiento {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaSalidaProductoMovimiento ;;
  }

  dimension: forwarder_producto_movimiento {
    type: string
    sql: ${TABLE}.forwarderProductoMovimiento ;;
  }

  dimension: id_bo_st_ubicacion {
    type: number
    sql: ${TABLE}.idBoStUbicacion ;;
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

  dimension: id_producto_movimiento {
    type: number
    sql: ${TABLE}.idProductoMovimiento ;;
  }

  dimension: id_proveedor {
    type: string
    sql: ${TABLE}.idProveedor ;;
  }

  dimension: pendiente_despacho_producto_movimiento {
    type: number
    sql: ${TABLE}.pendienteDespachoProductoMovimiento ;;
  }

  dimension: peso_omedidas_producto_movimiento {
    type: string
    sql: ${TABLE}.pesoOMedidasProductoMovimiento ;;
  }

  dimension: precio_producto_movimiento {
    type: number
    sql: ${TABLE}.precioProductoMovimiento ;;
  }

  dimension: proforma_producto_movimiento {
    type: string
    sql: ${TABLE}.proformaProductoMovimiento ;;
  }

  dimension: tracking_producto_movimiento {
    type: string
    sql: ${TABLE}.trackingProductoMovimiento ;;
  }
  measure: count {
    type: count
  }
}
