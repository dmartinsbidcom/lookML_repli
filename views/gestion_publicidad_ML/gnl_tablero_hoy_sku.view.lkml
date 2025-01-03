# The name of this view in Looker is "Gnl Tablero Hoy SKU"
view: gnl_tablero_hoy_sku {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_publicidad_ML.gnl_tablero_hoy_sku` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo" in Explore.

  dimension: codigo {
    type: string
    sql: ${TABLE}.Codigo ;;
  }
  measure: count {
    type: count
  }
}
