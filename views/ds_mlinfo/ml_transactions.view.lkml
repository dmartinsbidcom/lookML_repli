# The name of this view in Looker is "Ml Transactions"
view: ml_transactions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_mlinfo.ml_transactions` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Datastream Metadata Source Timestamp" in Explore.

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

  dimension: external_reference {
    type: string
    sql: ${TABLE}.external_reference ;;
  }

  dimension: fee_amount {
    type: number
    sql: ${TABLE}.fee_amount ;;
  }

  dimension: financing_fee_amount {
    type: number
    sql: ${TABLE}.financing_fee_amount ;;
  }

  dimension: installments {
    type: number
    sql: ${TABLE}.installments ;;
  }

  dimension: mkp_fee_amount {
    type: number
    sql: ${TABLE}.mkp_fee_amount ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: pack_id {
    type: number
    sql: ${TABLE}.pack_id ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}.payment_method ;;
  }

  dimension: payment_method_type {
    type: string
    sql: ${TABLE}.payment_method_type ;;
  }

  dimension: real_amount {
    type: number
    sql: ${TABLE}.real_amount ;;
  }

  dimension: settlement_currency {
    type: string
    sql: ${TABLE}.settlement_currency ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: settlement {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.settlement_date ;;
  }

  dimension: settlement_net_amount {
    type: number
    sql: ${TABLE}.settlement_net_amount ;;
  }

  dimension: shipment_mode {
    type: string
    sql: ${TABLE}.shipment_mode ;;
  }

  dimension: shipping_fee_amount {
    type: number
    sql: ${TABLE}.shipping_fee_amount ;;
  }

  dimension: shipping_id {
    type: number
    sql: ${TABLE}.shipping_id ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.site ;;
  }

  dimension: source_id {
    type: number
    sql: ${TABLE}.source_id ;;
  }

  dimension: tax_detail {
    type: string
    sql: ${TABLE}.tax_detail ;;
  }

  dimension: taxes_amount {
    type: number
    sql: ${TABLE}.taxes_amount ;;
  }

  dimension: transaction_amount {
    type: number
    sql: ${TABLE}.transaction_amount ;;
  }

  dimension: transaction_currency {
    type: string
    sql: ${TABLE}.transaction_currency ;;
  }

  dimension_group: transaction {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.transaction_date ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.transaction_type ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
  }
}
