# The name of this view in Looker is "Aprobacion Comex"
view: aprobacion_comex {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Supply_Chain.aprobacion_comex` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Aprobacion Comex" in Explore.

  dimension: aprobacion_comex {
    type: string
    sql: ${TABLE}.`Aprobacion Comex` ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_aprobacion_comex {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Fecha Aprobacion Comex` ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.ID ;;
  }
  measure: count {
    type: count
  }
}
