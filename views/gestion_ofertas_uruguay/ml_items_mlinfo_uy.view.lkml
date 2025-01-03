# The name of this view in Looker is "Ml Items Mlinfo Uy"
view: ml_items_mlinfo_uy {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_ofertas_uruguay.ml_items_mlinfo_uy` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo Producto Mlproduct" in Explore.

  dimension: codigo_producto_mlproduct {
    type: string
    sql: ${TABLE}.codigoProductoMLProduct ;;
  }

  dimension: free_shipping {
    type: number
    sql: ${TABLE}.free_shipping ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: listing_type_id {
    type: string
    sql: ${TABLE}.listing_type_id ;;
  }

  dimension: official_store_id {
    type: number
    sql: ${TABLE}.official_store_id ;;
  }
  measure: count {
    type: count
  }
}
