# The name of this view in Looker is "Ds Presupuestos Reparaciones Pedidos"
view: ds_presupuestos_reparaciones_pedidos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.reparaciones_pedidos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cantidad Producto Reparacion Pedido" in Explore.

  dimension: cantidad_producto_reparacion_pedido {
    type: number
    sql: ${TABLE}.cantidadProductoReparacionPedido ;;
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

  dimension_group: fecha_alta_reparacion_pedido {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaAltaReparacionPedido ;;
  }

  dimension: id_deposito {
    type: number
    sql: ${TABLE}.idDeposito ;;
  }

  dimension: id_producto {
    type: number
    sql: ${TABLE}.idProducto ;;
  }

  dimension: id_reparacion {
    type: number
    sql: ${TABLE}.idReparacion ;;
  }

  dimension: id_reparacion_pedido {
    type: number
    sql: ${TABLE}.idReparacionPedido ;;
  }

  dimension: id_reparacion_pedido_estado {
    type: number
    sql: ${TABLE}.idReparacionPedidoEstado ;;
  }

  dimension: id_usuario_alta {
    type: number
    sql: ${TABLE}.idUsuarioAlta ;;
  }
  measure: count {
    type: count
  }
}
