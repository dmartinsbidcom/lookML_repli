# The name of this view in Looker is "Ds Mlinfo Ml Fulfillment Stock"
view: ds_mlinfo_ml_fulfillment_stock {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_mlinfo.ml_fulfillment_stock` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Available Quantity" in Explore.

  dimension: available_quantity {
    type: number
    sql: ${TABLE}.available_quantity ;;
  }

  dimension: damaged {
    type: number
    sql: ${TABLE}.damaged ;;
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

  dimension: internal_process {
    type: number
    sql: ${TABLE}.internal_process ;;
  }

  dimension: inventory_id {
    type: string
    sql: ${TABLE}.inventory_id ;;
  }

  dimension: lost {
    type: number
    sql: ${TABLE}.lost ;;
  }

  dimension: mla {
    type: string
    sql: ${TABLE}.mla ;;
  }

  dimension: no_fiscal_coverage {
    type: number
    sql: ${TABLE}.no_fiscal_coverage ;;
  }

  dimension: not_available_quantity {
    type: number
    sql: ${TABLE}.not_available_quantity ;;
  }

  dimension: not_supported {
    type: number
    sql: ${TABLE}.not_supported ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension: transfer {
    type: number
    sql: ${TABLE}.transfer ;;
  }

  dimension: variation_id {
    type: number
    sql: ${TABLE}.variation_id ;;
  }

  dimension: withdrawal {
    type: number
    sql: ${TABLE}.withdrawal ;;
  }
  measure: count {
    type: count
  }
}
