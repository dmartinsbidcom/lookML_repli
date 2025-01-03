# The name of this view in Looker is "Db Choferes"
view: db_choferes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `TMP.db_choferes` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dni" in Explore.

  dimension: dni {
    type: number
    sql: ${TABLE}.DNI ;;
  }

  dimension: nombre_del_chofer {
    type: string
    sql: ${TABLE}.NOMBRE_DEL_CHOFER ;;
  }

  dimension: nombre_en_sistema {
    type: string
    sql: ${TABLE}.NOMBRE_EN_SISTEMA ;;
  }
  measure: count {
    type: count
  }
}
