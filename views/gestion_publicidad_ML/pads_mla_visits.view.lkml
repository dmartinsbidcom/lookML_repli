# The name of this view in Looker is "Pads Mla Visits"
view: pads_mla_visits {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_publicidad_ML.pads_mla_visits` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Date To" in Explore.

  dimension: date_to {
    type: string
    sql: ${TABLE}.date_to ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }

  dimension: total_visits {
    type: number
    sql: ${TABLE}.total_visits ;;
  }
  measure: count {
    type: count
  }
}
