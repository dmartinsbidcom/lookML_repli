# The name of this view in Looker is "Costos Sheets"
view: costos_sheets {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `costos.costos_sheets` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Costo" in Explore.

  dimension: costo {
    type: number
    sql: ${TABLE}.costo ;;
  }

  dimension: ep {
    type: yesno
    sql: ${TABLE}.ep ;;
  }

  dimension: iva {
    type: number
    sql: ${TABLE}.iva ;;
  }

  dimension: local {
    type: yesno
    sql: ${TABLE}.local ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  measure: count {
    type: count
  }
}
