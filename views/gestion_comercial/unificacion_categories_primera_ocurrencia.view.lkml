# The name of this view in Looker is "Unificacion Categories Primera Ocurrencia"
view: unificacion_categories_primera_ocurrencia {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.unificacion_categories_primera_ocurrencia` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Category" in Explore.

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
  }
  measure: count {
    type: count
  }
}
