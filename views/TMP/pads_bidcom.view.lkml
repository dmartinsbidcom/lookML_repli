# The name of this view in Looker is "Pads Bidcom"
view: pads_bidcom {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `TMP.pads_bidcom` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Acos" in Explore.

  dimension: acos {
    type: number
    sql: ${TABLE}.acos ;;
  }

  dimension: amount_direct {
    type: number
    sql: ${TABLE}.amount_direct ;;
  }

  dimension: amount_indirect {
    type: number
    sql: ${TABLE}.amount_indirect ;;
  }

  dimension: amount_total {
    type: number
    sql: ${TABLE}.amount_total ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: cpc {
    type: number
    sql: ${TABLE}.cpc ;;
  }

  dimension: ctr {
    type: number
    sql: ${TABLE}.ctr ;;
  }

  dimension: cvr {
    type: number
    sql: ${TABLE}.cvr ;;
  }

  dimension: date_from {
    type: string
    sql: ${TABLE}.date_from ;;
  }

  dimension: date_to {
    type: string
    sql: ${TABLE}.date_to ;;
  }

  dimension: direct_units_quantity {
    type: number
    sql: ${TABLE}.direct_units_quantity ;;
  }

  dimension: freshness {
    type: number
    sql: ${TABLE}.freshness ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: indirect_units_quantity {
    type: number
    sql: ${TABLE}.indirect_units_quantity ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }

  dimension: roas {
    type: number
    sql: ${TABLE}.roas ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: units_quantity {
    type: number
    sql: ${TABLE}.units_quantity ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}
