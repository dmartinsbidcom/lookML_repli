# The name of this view in Looker is "Mlas Candidates"
view: mlas_candidates {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.mlas_candidates` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Candidate ID" in Explore.

  dimension: candidate_id {
    type: string
    sql: ${TABLE}.candidate_id ;;
  }

  dimension: datastream_metadata__is_deleted {
    type: yesno
    sql: ${TABLE}.datastream_metadata.is_deleted ;;
    group_label: "Datastream Metadata"
    group_item_label: "Is Deleted"
  }

  dimension: datastream_metadata__source_timestamp {
    type: number
    sql: ${TABLE}.datastream_metadata.source_timestamp ;;
    group_label: "Datastream Metadata"
    group_item_label: "Source Timestamp"
  }

  dimension: datastream_metadata__uuid {
    type: string
    sql: ${TABLE}.datastream_metadata.uuid ;;
    group_label: "Datastream Metadata"
    group_item_label: "Uuid"
  }

  dimension: meli_percentage {
    type: number
    sql: ${TABLE}.meli_percentage ;;
  }

  dimension: min_discounted_price {
    type: number
    sql: ${TABLE}.min_discounted_price ;;
  }

  dimension: mla {
    type: string
    sql: ${TABLE}.mla ;;
  }

  dimension: original_price {
    type: number
    sql: ${TABLE}.original_price ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: promotion_deadline {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.promotion_deadline_date ;;
  }

  dimension_group: promotion_finish {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.promotion_finish_date ;;
  }

  dimension: promotion_id {
    type: string
    sql: ${TABLE}.promotion_id ;;
  }

  dimension: promotion_name {
    type: string
    sql: ${TABLE}.promotion_name ;;
  }

  dimension_group: promotion_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.promotion_start_date ;;
  }

  dimension: promotion_status {
    type: string
    sql: ${TABLE}.promotion_status ;;
  }

  dimension: promotion_type {
    type: string
    sql: ${TABLE}.promotion_type ;;
  }

  dimension: seller_percentage {
    type: number
    sql: ${TABLE}.seller_percentage ;;
  }
  measure: count {
    type: count
    drill_fields: [promotion_name]
  }
}
