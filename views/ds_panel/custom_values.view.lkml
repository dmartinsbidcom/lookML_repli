# The name of this view in Looker is "Custom Values"
view: custom_values {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.custom_values` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Competitivo Bidcom" in Explore.

  dimension: competitivo_bidcom {
    type: string
    sql: ${TABLE}.competitivo_bidcom ;;
  }

  dimension: competitivo_gadnic {
    type: string
    sql: ${TABLE}.competitivo_gadnic ;;
  }

  dimension: datastream_metadata__is_deleted {
    type: yesno
    sql: ${TABLE}.datastream_metadata.is_deleted ;;
    group_label: "Datastream Metadata"
    group_item_label: "Is Deleted"
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

  dimension: destacados_bidcom {
    type: string
    sql: ${TABLE}.destacados_bidcom ;;
  }

  dimension: destacados_gadnic {
    type: string
    sql: ${TABLE}.destacados_gadnic ;;
  }

  dimension: texto_bidcom {
    type: string
    sql: ${TABLE}.texto_bidcom ;;
  }

  dimension: texto_gadnic {
    type: string
    sql: ${TABLE}.texto_gadnic ;;
  }

  dimension: top_100_bidcom {
    type: string
    sql: ${TABLE}.top_100_bidcom ;;
  }

  dimension: top_100_gadnic {
    type: string
    sql: ${TABLE}.top_100_gadnic ;;
  }

  dimension: top_50_bidcom {
    type: string
    sql: ${TABLE}.top_50_bidcom ;;
  }

  dimension: top_50_gadnic {
    type: string
    sql: ${TABLE}.top_50_gadnic ;;
  }
  measure: count {
    type: count
  }
}
