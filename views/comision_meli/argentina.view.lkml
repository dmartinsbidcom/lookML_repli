# The name of this view in Looker is "Argentina"
view: argentina {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `comision_meli.argentina` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Categoria" in Explore.

  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }

  dimension: comision_clasica {
    type: string
    sql: ${TABLE}.comision_clasica ;;
  }

  dimension: comision_premium {
    type: string
    sql: ${TABLE}.comision_premium ;;
  }

  dimension: id_categoria {
    type: string
    sql: ${TABLE}.id_categoria ;;
  }
  measure: count {
    type: count
  }
}
