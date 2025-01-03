# The name of this view in Looker is "Unificacion Categories"
view: unificacion_categories {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.unificacion_categories` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Category" in Explore.

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}.Codigo ;;
  }

  dimension: responsable_de_categoria {
    type: string
    sql: ${TABLE}.`Responsable de Categoria` ;;
  }

  dimension: row_num {
    type: number
    sql: ${TABLE}.row_num ;;
  }
  measure: count {
    type: count
  }
}
