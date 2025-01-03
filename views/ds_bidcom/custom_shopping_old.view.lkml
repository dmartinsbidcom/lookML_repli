# The name of this view in Looker is "Custom Shopping Old"
view: custom_shopping_old {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_bidcom.custom_shopping_old` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Competitivos" in Explore.

  dimension: competitivos {
    type: string
    sql: ${TABLE}.competitivos ;;
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

  dimension: estratos_roas {
    type: string
    sql: ${TABLE}.estratos_roas ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: sku_roas {
    type: string
    sql: ${TABLE}.sku_roas ;;
  }

  dimension: texto {
    type: string
    sql: ${TABLE}.texto ;;
  }

  dimension: tienda {
    type: string
    sql: ${TABLE}.tienda ;;
  }

  dimension: top_100 {
    type: string
    sql: ${TABLE}.top_100 ;;
  }

  dimension: top_50 {
    type: string
    sql: ${TABLE}.top_50 ;;
  }
  measure: count {
    type: count
  }
}
