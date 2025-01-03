# The name of this view in Looker is "Custom Shopping"
view: custom_shopping {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_bidcom.custom_shopping` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Brand" in Explore.

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: custom_label_0 {
    type: string
    sql: ${TABLE}.custom_label_0 ;;
  }

  dimension: custom_label_0_gadnic {
    type: string
    sql: ${TABLE}.custom_label_0_gadnic ;;
  }

  dimension: custom_label_1 {
    type: string
    sql: ${TABLE}.custom_label_1 ;;
  }

  dimension: custom_label_1_gadnic {
    type: string
    sql: ${TABLE}.custom_label_1_gadnic ;;
  }

  dimension: custom_label_2 {
    type: string
    sql: ${TABLE}.custom_label_2 ;;
  }

  dimension: custom_label_2_gadnic {
    type: string
    sql: ${TABLE}.custom_label_2_gadnic ;;
  }

  dimension: custom_label_3 {
    type: string
    sql: ${TABLE}.custom_label_3 ;;
  }

  dimension: custom_label_3_gadnic {
    type: string
    sql: ${TABLE}.custom_label_3_gadnic ;;
  }

  dimension: custom_label_4 {
    type: string
    sql: ${TABLE}.custom_label_4 ;;
  }

  dimension: custom_label_4_gadnic {
    type: string
    sql: ${TABLE}.custom_label_4_gadnic ;;
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

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: texto_bidcom {
    type: string
    sql: ${TABLE}.texto_bidcom ;;
  }

  dimension: texto_gadnic {
    type: string
    sql: ${TABLE}.texto_gadnic ;;
  }
  measure: count {
    type: count
  }
}
