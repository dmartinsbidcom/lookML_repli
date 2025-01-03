# The name of this view in Looker is "Checkoutbidcom Testcheckoutbidcom Mlproducts Catalogo"
view: checkoutbidcom_testcheckoutbidcom_mlproducts_catalogo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `checkoutbidcom_testcheckoutbidcom.MLProducts_catalogo` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Boosts Cross Docking" in Explore.

  dimension: boosts_cross_docking {
    type: number
    sql: ${TABLE}.boosts_cross_docking ;;
  }

  dimension: boosts_drop_off {
    type: number
    sql: ${TABLE}.boosts_drop_off ;;
  }

  dimension: boosts_free_installments {
    type: number
    sql: ${TABLE}.boosts_free_installments ;;
  }

  dimension: boosts_free_shipping {
    type: number
    sql: ${TABLE}.boosts_free_shipping ;;
  }

  dimension: boosts_fulfillment {
    type: number
    sql: ${TABLE}.boosts_fulfillment ;;
  }

  dimension: boosts_same_day_shipping {
    type: number
    sql: ${TABLE}.boosts_same_day_shipping ;;
  }

  dimension: boosts_shipping_quarantine {
    type: number
    sql: ${TABLE}.boosts_shipping_quarantine ;;
  }

  dimension: codigo_aguila {
    type: string
    sql: ${TABLE}.codigo_aguila ;;
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
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: original_price {
    type: number
    sql: ${TABLE}.original_price ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: price_to_win {
    type: number
    sql: ${TABLE}.price_to_win ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: winner_id {
    type: string
    sql: ${TABLE}.winner_id ;;
  }
  measure: count {
    type: count
  }
}
