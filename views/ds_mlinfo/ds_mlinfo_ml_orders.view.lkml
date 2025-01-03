# The name of this view in Looker is "Ds Mlinfo Ml Orders"
view: ds_mlinfo_ml_orders {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_mlinfo.ml_orders` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Buyer ID" in Explore.

  dimension: buyer_id {
    type: number
    sql: ${TABLE}.buyer_id ;;
  }

  dimension: buyer_nickname {
    type: string
    sql: ${TABLE}.buyer_nickname ;;
  }

  dimension: category_id {
    type: string
    sql: ${TABLE}.category_id ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
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
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_closed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.date_closed ;;
  }

  dimension_group: date_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.date_created ;;
  }

  dimension_group: date_last_updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.date_last_updated ;;
  }

  dimension: estado_carga_mc {
    type: number
    sql: ${TABLE}.estado_carga_mc ;;
  }

  dimension: feedback_purchase_date_created {
    type: string
    sql: ${TABLE}.feedback_purchase_date_created ;;
  }

  dimension: feedback_purchase_rating {
    type: string
    sql: ${TABLE}.feedback_purchase_rating ;;
  }

  dimension: feedback_sale_date_created {
    type: string
    sql: ${TABLE}.feedback_sale_date_created ;;
  }

  dimension: feedback_sale_rating {
    type: string
    sql: ${TABLE}.feedback_sale_rating ;;
  }

  dimension: fulfilled {
    type: number
    sql: ${TABLE}.fulfilled ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }

  dimension_group: manufacturing_ending {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.manufacturing_ending_date ;;
  }

  dimension: pack_id {
    type: number
    sql: ${TABLE}.pack_id ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: seller_id {
    type: number
    sql: ${TABLE}.seller_id ;;
  }

  dimension: seller_sku {
    type: string
    sql: ${TABLE}.seller_sku ;;
  }

  dimension: shipping_id {
    type: number
    sql: ${TABLE}.shipping_id ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: sku_reemplazado {
    type: string
    sql: ${TABLE}.sku_reemplazado ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: total_amount_with_shipping {
    type: number
    sql: ${TABLE}.total_amount_with_shipping ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.unit_price ;;
  }

  dimension: variation_color {
    type: string
    sql: ${TABLE}.variation_color ;;
  }
  measure: count {
    type: count
    drill_fields: [buyer_nickname]
  }
}
