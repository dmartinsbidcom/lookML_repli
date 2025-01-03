# The name of this view in Looker is "Wp Post"
view: wp_post {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_newhome.wp_post` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Datastream Metadata Source Timestamp" in Explore.

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

  dimension: guid {
    type: string
    sql: ${TABLE}.guid ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: post_subtitle {
    type: string
    sql: ${TABLE}.post_subtitle ;;
  }

  dimension: post_title {
    type: string
    sql: ${TABLE}.post_title ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }
  measure: count {
    type: count
  }
}