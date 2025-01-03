# The name of this view in Looker is "Ds Mlinfo Ml Shipping"
view: ds_mlinfo_ml_shipping {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_mlinfo.ml_shipping` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Agency Description" in Explore.

  dimension: agency_description {
    type: string
    sql: ${TABLE}.agency_description ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
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

  dimension: delay {
    type: number
    sql: ${TABLE}.delay ;;
  }

  dimension: delivery_preference {
    type: string
    sql: ${TABLE}.delivery_preference ;;
  }

  dimension: estimated_delivery {
    type: string
    sql: ${TABLE}.estimated_delivery ;;
  }

  dimension: estimated_delivery_offset {
    type: string
    sql: ${TABLE}.estimated_delivery_offset ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: logistic_type {
    type: string
    sql: ${TABLE}.logistic_type ;;
  }

  dimension: ml_cost {
    type: number
    sql: ${TABLE}.ml_cost ;;
  }

  dimension: mode {
    type: string
    sql: ${TABLE}.mode ;;
  }

  dimension: receiver_city {
    type: string
    sql: ${TABLE}.receiver_city ;;
  }

  dimension: receiver_comment {
    type: string
    sql: ${TABLE}.receiver_comment ;;
  }

  dimension: receiver_cost {
    type: number
    sql: ${TABLE}.receiver_cost ;;
  }

  dimension: receiver_name {
    type: string
    sql: ${TABLE}.receiver_name ;;
  }

  dimension: receiver_phone {
    type: string
    sql: ${TABLE}.receiver_phone ;;
  }

  dimension: receiver_state {
    type: string
    sql: ${TABLE}.receiver_state ;;
  }

  dimension: receiver_street_name {
    type: string
    sql: ${TABLE}.receiver_street_name ;;
  }

  dimension: receiver_street_number {
    type: string
    sql: ${TABLE}.receiver_street_number ;;
  }

  dimension: receiver_zip_code {
    type: number
    sql: ${TABLE}.receiver_zip_code ;;
  }

  dimension: sender_cost {
    type: number
    sql: ${TABLE}.sender_cost ;;
  }

  dimension: shipping_method_id {
    type: number
    sql: ${TABLE}.shipping_method_id ;;
  }

  dimension: shipping_option_name {
    type: string
    sql: ${TABLE}.shipping_option_name ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: substatus {
    type: string
    sql: ${TABLE}.substatus ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: time_from {
    type: string
    sql: ${TABLE}.time_from ;;
  }

  dimension: time_to {
    type: string
    sql: ${TABLE}.time_to ;;
  }

  dimension: total_cost {
    type: number
    sql: ${TABLE}.total_cost ;;
  }

  dimension: tracking_number {
    type: string
    sql: ${TABLE}.tracking_number ;;
  }
  measure: count {
    type: count
    drill_fields: [receiver_street_name, receiver_name, shipping_option_name]
  }
}
