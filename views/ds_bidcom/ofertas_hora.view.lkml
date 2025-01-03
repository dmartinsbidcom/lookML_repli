# The name of this view in Looker is "Ofertas Hora"
view: ofertas_hora {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_bidcom.ofertas_hora` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Datastream Metadata Is Deleted" in Explore.

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

  dimension: hora {
    type: number
    sql: ${TABLE}.hora ;;
  }

  dimension: post_id_1 {
    type: number
    value_format_name: id
    sql: ${TABLE}.post_id_1 ;;
  }

  dimension: post_id_10 {
    type: number
    value_format_name: id
    sql: ${TABLE}.post_id_10 ;;
  }

  dimension: post_id_11 {
    type: number
    value_format_name: id
    sql: ${TABLE}.post_id_11 ;;
  }

  dimension: post_id_12 {
    type: number
    value_format_name: id
    sql: ${TABLE}.post_id_12 ;;
  }

  dimension: post_id_2 {
    type: number
    value_format_name: id
    sql: ${TABLE}.post_id_2 ;;
  }

  dimension: post_id_3 {
    type: number
    value_format_name: id
    sql: ${TABLE}.post_id_3 ;;
  }

  dimension: post_id_4 {
    type: number
    value_format_name: id
    sql: ${TABLE}.post_id_4 ;;
  }

  dimension: post_id_5 {
    type: number
    value_format_name: id
    sql: ${TABLE}.post_id_5 ;;
  }

  dimension: post_id_6 {
    type: number
    value_format_name: id
    sql: ${TABLE}.post_id_6 ;;
  }

  dimension: post_id_7 {
    type: number
    value_format_name: id
    sql: ${TABLE}.post_id_7 ;;
  }

  dimension: post_id_8 {
    type: number
    value_format_name: id
    sql: ${TABLE}.post_id_8 ;;
  }

  dimension: post_id_9 {
    type: number
    value_format_name: id
    sql: ${TABLE}.post_id_9 ;;
  }
  measure: count {
    type: count
  }
}
