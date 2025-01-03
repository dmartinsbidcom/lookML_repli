# The name of this view in Looker is "Ds Panel Proyecto Sofia"
view: ds_panel_proyecto_sofia {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.proyecto_sofia` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Comment" in Explore.

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }

  dimension: coupon {
    type: string
    sql: ${TABLE}.coupon ;;
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

  dimension: dni {
    type: number
    sql: ${TABLE}.dni ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: mail {
    type: string
    sql: ${TABLE}.mail ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: meli_name {
    type: string
    sql: ${TABLE}.meliName ;;
  }

  dimension: mla {
    type: string
    sql: ${TABLE}.mla ;;
  }

  dimension: participate {
    type: string
    sql: ${TABLE}.participate ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: participation {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.participationDate ;;
  }

  dimension: phone {
    type: number
    sql: ${TABLE}.phone ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.rating ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
  }

  dimension: sale_channel {
    type: string
    sql: ${TABLE}.saleChannel ;;
  }

  dimension: seller_name {
    type: string
    sql: ${TABLE}.sellerName ;;
  }
  measure: count {
    type: count
    drill_fields: [seller_name, meli_name]
  }
}
