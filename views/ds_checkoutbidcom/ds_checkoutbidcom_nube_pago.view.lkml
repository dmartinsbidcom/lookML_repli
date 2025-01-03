# The name of this view in Looker is "Ds Checkoutbidcom Nube Pago"
view: ds_checkoutbidcom_nube_pago {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_checkoutbidcom.NubePago` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Amount" in Explore.

  dimension: amount {
    type: string
    sql: ${TABLE}.Amount ;;
  }

  dimension: barcode {
    type: string
    sql: ${TABLE}.Barcode ;;
  }

  dimension: bidcom_id {
    type: number
    sql: ${TABLE}.BidcomId ;;
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
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Date ;;
  }

  dimension: nube_pago_id {
    type: string
    sql: ${TABLE}.NubePagoId ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }
  measure: count {
    type: count
  }
}
