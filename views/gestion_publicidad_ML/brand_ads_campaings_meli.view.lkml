# The name of this view in Looker is "Brand Ads Campaings Meli"
view: brand_ads_campaings_meli {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_publicidad_ML.BRAND_ADS_CAMPAINGS_MELI` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Acos" in Explore.

  dimension: acos {
    type: number
    sql: ${TABLE}.acos ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: consumed_budget {
    type: number
    sql: ${TABLE}.consumed_budget ;;
  }

  dimension: cpc {
    type: number
    sql: ${TABLE}.cpc ;;
  }

  dimension: ctr {
    type: number
    sql: ${TABLE}.ctr ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: cvr {
    type: number
    sql: ${TABLE}.cvr ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_day {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_day ;;
  }

  dimension: event_items_quantity {
    type: number
    sql: ${TABLE}.event_items_quantity ;;
  }

  dimension: event_units_amount {
    type: number
    sql: ${TABLE}.event_units_amount ;;
  }

  dimension: event_units_quantity {
    type: number
    sql: ${TABLE}.event_units_quantity ;;
  }

  dimension: prints {
    type: number
    sql: ${TABLE}.prints ;;
  }

  dimension: site_id {
    type: string
    sql: ${TABLE}.site_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: touch_items_quantity {
    type: number
    sql: ${TABLE}.touch_items_quantity ;;
  }

  dimension: touch_units_amount {
    type: number
    sql: ${TABLE}.touch_units_amount ;;
  }

  dimension: touch_units_quantity {
    type: number
    sql: ${TABLE}.touch_units_quantity ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}
