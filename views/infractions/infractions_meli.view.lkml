# The name of this view in Looker is "Infractions Meli"
view: infractions_meli {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `infractions.meli` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.date_created ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Element ID" in Explore.

  dimension: element_id {
    type: string
    sql: ${TABLE}.element_id ;;
  }

  dimension: element_type {
    type: string
    sql: ${TABLE}.element_type ;;
  }

  dimension: filter_subgroup {
    type: string
    sql: ${TABLE}.filter_subgroup ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: pictures {
    type: string
    sql: ${TABLE}.pictures ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
  }

  dimension: related_item_id {
    type: string
    sql: ${TABLE}.related_item_id ;;
  }

  dimension: remedy {
    type: string
    sql: ${TABLE}.remedy ;;
  }

  dimension: seller {
    type: string
    sql: ${TABLE}.seller ;;
  }

  dimension: site_id {
    type: string
    sql: ${TABLE}.site_id ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
  }
}
