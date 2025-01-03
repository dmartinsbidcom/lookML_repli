# The name of this view in Looker is "Historial Preventa Web"
view: historial_preventa_web {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `historial_preventa.web` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Comex ID" in Explore.

  dimension: comex_id {
    type: string
    sql: ${TABLE}.comex_id ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.updated_on ;;
  }
  measure: count {
    type: count
  }
}
