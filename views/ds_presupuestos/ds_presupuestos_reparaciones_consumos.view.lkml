# The name of this view in Looker is "Ds Presupuestos Reparaciones Consumos"
view: ds_presupuestos_reparaciones_consumos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.reparaciones_consumos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cantidad Reparacion Consumo" in Explore.

  dimension: cantidad_reparacion_consumo {
    type: number
    sql: ${TABLE}.cantidadReparacionConsumo ;;
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

  dimension: descontar_stock_reparacion_consumo {
    type: number
    sql: ${TABLE}.descontarStockReparacionConsumo ;;
  }

  dimension: id_producto {
    type: number
    sql: ${TABLE}.idProducto ;;
  }

  dimension: id_reparacion {
    type: number
    sql: ${TABLE}.idReparacion ;;
  }

  dimension: id_reparacion_consumo {
    type: number
    sql: ${TABLE}.idReparacionConsumo ;;
  }

  dimension: precio_unitario_reparacion_consumo {
    type: number
    sql: ${TABLE}.precioUnitarioReparacionConsumo ;;
  }

  dimension: total_reparacion_consumo {
    type: number
    sql: ${TABLE}.totalReparacionConsumo ;;
  }
  measure: count {
    type: count
  }
}
