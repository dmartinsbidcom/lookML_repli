# The name of this view in Looker is "Categoria Forzada"
view: categoria_forzada {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.categoria_forzada` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Categoria Forzada" in Explore.

  dimension: categoria_forzada {
    type: string
    sql: ${TABLE}.categoria_forzada ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
  }
  measure: count {
    type: count
  }
}
