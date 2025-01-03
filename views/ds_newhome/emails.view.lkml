# The name of this view in Looker is "Emails"
view: emails {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_newhome.emails` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Attachment" in Explore.

  dimension: attachment {
    type: string
    sql: ${TABLE}.attachment ;;
  }

  dimension: bo_id {
    type: number
    sql: ${TABLE}.bo_id ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created ;;
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

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.id_comprobante ;;
  }

  dimension: id_factura {
    type: number
    sql: ${TABLE}.id_factura ;;
  }

  dimension_group: last_updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_updated ;;
  }

  dimension: mc_id {
    type: number
    sql: ${TABLE}.mc_id ;;
  }

  dimension: receiver {
    type: string
    sql: ${TABLE}.receiver ;;
  }

  dimension: sender {
    type: string
    sql: ${TABLE}.sender ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_description {
    type: string
    sql: ${TABLE}.status_description ;;
  }

  dimension: template {
    type: string
    sql: ${TABLE}.template ;;
  }

  dimension: values {
    type: string
    sql: ${TABLE}.values ;;
  }
  measure: count {
    type: count
  }
}
