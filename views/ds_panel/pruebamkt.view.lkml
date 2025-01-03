# The name of this view in Looker is "Pruebamkt"
view: pruebamkt {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.pruebamkt` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Account Name" in Explore.

  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }

  dimension: action_values_offsite_conversion_fb_pixel_purchase {
    type: number
    sql: ${TABLE}.action_values_offsite_conversion_fb_pixel_purchase ;;
  }

  dimension: actions_omni_purchase {
    type: number
    sql: ${TABLE}.actions_omni_purchase ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
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
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }

  dimension: website_purchase_roas_offsite_conversion_fb_pixel_purchase {
    type: number
    sql: ${TABLE}.website_purchase_roas_offsite_conversion_fb_pixel_purchase ;;
  }
  measure: count {
    type: count
    drill_fields: [account_name]
  }
}