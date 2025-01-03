# The name of this view in Looker is "Ds Presupuestos Stock"
view: ds_presupuestos_stock {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.stock` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cantidad Stock" in Explore.

  dimension: cantidad_stock {
    type: number
    sql: ${TABLE}.cantidadStock ;;
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

  dimension: id_deposito {
    type: number
    sql: ${TABLE}.idDeposito ;;
  }

  dimension: id_producto {
    type: number
    sql: ${TABLE}.idProducto ;;
  }
  measure: count {
    type: count
  }
}