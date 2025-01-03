# The name of this view in Looker is "Ds Mlinfo Uy Ml Item Variations"
view: ds_mlinfo_uy_ml_item_variations {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_mlinfo_uy.ml_item_variations` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Available Quantity" in Explore.

  dimension: available_quantity {
    type: number
    sql: ${TABLE}.available_quantity ;;
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
    sql: ${TABLE}.id ;;
  }

  dimension: mla {
    type: string
    sql: ${TABLE}.mla ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: sold_quantity {
    type: number
    sql: ${TABLE}.sold_quantity ;;
  }
  measure: count {
    type: count
  }
}