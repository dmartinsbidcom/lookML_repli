# The name of this view in Looker is "Ds Mlinfo Ml Orders Comments"
view: ds_mlinfo_ml_orders_comments {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_mlinfo.ml_orders_comments` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Comment" in Explore.

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
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
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.date_created ;;
  }

  dimension: date_dropped {
    type: string
    sql: ${TABLE}.date_dropped ;;
  }

  dimension: date_requirement_closed {
    type: string
    sql: ${TABLE}.date_requirement_closed ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: id_usuario {
    type: number
    sql: ${TABLE}.idUsuario ;;
  }

  dimension: id_usuario_drop {
    type: number
    sql: ${TABLE}.idUsuario_drop ;;
  }

  dimension: id_usuario_requirement_close {
    type: number
    sql: ${TABLE}.idUsuario_requirement_close ;;
  }

  dimension: login_usuario {
    type: string
    sql: ${TABLE}.loginUsuario ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: requirement_comment {
    type: string
    sql: ${TABLE}.requirement_comment ;;
  }

  dimension: requirement_id {
    type: number
    sql: ${TABLE}.requirement_id ;;
  }

  dimension: requirement_status {
    type: number
    sql: ${TABLE}.requirement_status ;;
  }
  measure: count {
    type: count
  }
}
