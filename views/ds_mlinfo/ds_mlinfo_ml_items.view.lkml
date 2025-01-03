# The name of this view in Looker is "Ds Mlinfo Ml Items"
view: ds_mlinfo_ml_items {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_mlinfo.ml_items` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Available Quantity" in Explore.

  dimension: available_quantity {
    type: number
    sql: ${TABLE}.available_quantity ;;
  }

  dimension: category_id {
    type: string
    sql: ${TABLE}.category_id ;;
  }

  dimension: codigo_producto_mlproduct {
    type: string
    sql: ${TABLE}.codigoProductoMLProduct ;;
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

  dimension: date_created {
    type: string
    sql: ${TABLE}.date_created ;;
  }

  dimension: ean {
    type: string
    sql: ${TABLE}.ean ;;
  }

  dimension: free_shipping {
    type: number
    sql: ${TABLE}.free_shipping ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: last_updated {
    type: string
    sql: ${TABLE}.last_updated ;;
  }

  dimension: listing_type_id {
    type: string
    sql: ${TABLE}.listing_type_id ;;
  }

  dimension: logistic_type {
    type: string
    sql: ${TABLE}.logistic_type ;;
  }

  dimension: official_store_id {
    type: number
    sql: ${TABLE}.official_store_id ;;
  }

  dimension: original_price {
    type: number
    sql: ${TABLE}.original_price ;;
  }

  dimension: permalink {
    type: string
    sql: ${TABLE}.permalink ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: seller_id {
    type: number
    sql: ${TABLE}.seller_id ;;
  }

  dimension: shipping_tags {
    type: string
    sql: ${TABLE}.shipping_tags ;;
  }

  dimension: sold_quantity {
    type: number
    sql: ${TABLE}.sold_quantity ;;
  }

  dimension: start_time {
    type: string
    sql: ${TABLE}.start_time ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: stop_time {
    type: string
    sql: ${TABLE}.stop_time ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: thumbnail {
    type: string
    sql: ${TABLE}.thumbnail ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.video_id ;;
  }
  measure: count {
    type: count
  }
}
