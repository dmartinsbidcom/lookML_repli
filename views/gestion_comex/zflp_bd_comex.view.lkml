# The name of this view in Looker is "Zflp Bd Comex"
view: zflp_bd_comex {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comex.zflp_bd_comex` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo" in Explore.

  dimension: codigo {
    type: string
    sql: ${TABLE}.Codigo ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_liberacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Fecha liberacion` ;;
  }

  dimension: izflp {
    type: string
    sql: ${TABLE}.IZFLP ;;
  }

  dimension: so {
    type: string
    sql: ${TABLE}.SO ;;
  }

  dimension: stock_actual_en_zflp {
    type: number
    sql: ${TABLE}.`Stock Actual en ZFLP` ;;
  }
  measure: count {
    type: count
  }
}
