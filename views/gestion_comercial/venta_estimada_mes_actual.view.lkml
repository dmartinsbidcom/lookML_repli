# The name of this view in Looker is "Venta Estimada Mes Actual"
view: venta_estimada_mes_actual {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.venta_estimada_mes_actual` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo" in Explore.

  dimension: codigo {
    type: string
    sql: ${TABLE}.Codigo ;;
  }

  dimension: venta_estimada_mes_actual {
    type: string
    sql: ${TABLE}.venta_estimada_mes_actual ;;
  }
  measure: count {
    type: count
  }
}
