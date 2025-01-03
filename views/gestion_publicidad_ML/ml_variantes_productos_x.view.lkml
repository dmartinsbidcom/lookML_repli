# The name of this view in Looker is "Ml Variantes Productos X"
view: ml_variantes_productos_x {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_publicidad_ML.ml_variantes_productos_x` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Producto X" in Explore.

  dimension: producto_x {
    type: string
    sql: ${TABLE}.Producto_X ;;
  }

  dimension: productos {
    type: string
    sql: ${TABLE}.Productos ;;
  }
  measure: count {
    type: count
  }
}
