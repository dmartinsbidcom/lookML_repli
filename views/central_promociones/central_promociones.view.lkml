# The name of this view in Looker is "Central Promociones"
view: central_promociones {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `central_promociones.central_promociones` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "API Price" in Explore.

  dimension: api_price {
    type: number
    sql: ${TABLE}.api_price ;;
  }

  dimension: job {
    type: string
    sql: ${TABLE}.job ;;
  }

  dimension: listing_type_id {
    type: string
    sql: ${TABLE}.listing_type_id ;;
  }

  dimension: mla {
    type: string
    sql: ${TABLE}.mla ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: sheet_id {
    type: string
    sql: ${TABLE}.sheet_id ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: success {
    type: yesno
    sql: ${TABLE}.success ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.updated_on ;;
  }

  dimension: user_mail {
    type: string
    sql: ${TABLE}.user_mail ;;
  }
  measure: count {
    type: count
  }
}
