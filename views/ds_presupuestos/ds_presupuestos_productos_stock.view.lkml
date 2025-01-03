# The name of this view in Looker is "Ds Presupuestos Productos Stock"
view: ds_presupuestos_productos_stock {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.productos_stock` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo Producto" in Explore.

  dimension: codigo_producto {
    type: string
    sql: ${TABLE}.codigoProducto ;;
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

  dimension_group: fecha_ultimo_mov {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.Fecha_Ultimo_Mov ;;
  }

  dimension: id_deposito {
    type: number
    sql: ${TABLE}.idDeposito ;;
  }

  dimension: q_movimientos {
    type: number
    sql: ${TABLE}.Q_Movimientos ;;
  }

  dimension: stock_producto_deposito {
    type: number
    sql: ${TABLE}.StockProductoDeposito ;;
  }
  measure: count {
    type: count
  }
}
