# The name of this view in Looker is "Checkoutbidcom Testcheckoutbidcom Log Todo Pago"
view: checkoutbidcom_testcheckoutbidcom_log_todo_pago {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `checkoutbidcom_testcheckoutbidcom.LogTodoPago` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Bidcom ID" in Explore.

  dimension: bidcom_id {
    type: number
    sql: ${TABLE}.BidcomId ;;
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

  dimension: id {
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: request {
    type: string
    sql: ${TABLE}.Request ;;
  }

  dimension: response {
    type: string
    sql: ${TABLE}.Response ;;
  }
  measure: count {
    type: count
  }
}