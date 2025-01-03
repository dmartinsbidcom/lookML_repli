# The name of this view in Looker is "Checkoutbidcom Testcheckoutbidcom Mlproducts Shipping"
view: checkoutbidcom_testcheckoutbidcom_mlproducts_shipping {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `checkoutbidcom_testcheckoutbidcom.MLProducts_shipping` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo Aguila" in Explore.

  dimension: codigo_aguila {
    type: string
    sql: ${TABLE}.codigo_aguila ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: mla {
    type: string
    sql: ${TABLE}.mla ;;
  }

  dimension: shipping_rule_id {
    type: string
    sql: ${TABLE}.shipping_rule_id ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }
  measure: count {
    type: count
  }
}
