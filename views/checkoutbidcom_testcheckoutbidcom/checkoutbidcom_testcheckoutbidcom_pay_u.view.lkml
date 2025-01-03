# The name of this view in Looker is "Checkoutbidcom Testcheckoutbidcom Pay U"
view: checkoutbidcom_testcheckoutbidcom_pay_u {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `checkoutbidcom_testcheckoutbidcom.PayU` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cc Holder" in Explore.

  dimension: cc_holder {
    type: string
    sql: ${TABLE}.cc_holder ;;
  }

  dimension: cc_number {
    type: string
    sql: ${TABLE}.cc_number ;;
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

  dimension: id {
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: payment_method_name {
    type: string
    sql: ${TABLE}.payment_method_name ;;
  }

  dimension: reference_pol {
    type: string
    sql: ${TABLE}.reference_pol ;;
  }

  dimension: reference_sale {
    type: string
    sql: ${TABLE}.reference_sale ;;
  }

  dimension: response_code_pol {
    type: string
    sql: ${TABLE}.response_code_pol ;;
  }

  dimension: response_message_pol {
    type: string
    sql: ${TABLE}.response_message_pol ;;
  }

  dimension: state_pol {
    type: string
    sql: ${TABLE}.state_pol ;;
  }

  dimension: transaction_date {
    type: string
    sql: ${TABLE}.transaction_date ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  measure: count {
    type: count
    drill_fields: [payment_method_name]
  }
}
