# The name of this view in Looker is "Pads All Campaigns"
view: pads_all_campaigns {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_publicidad_ML.pads_all_campaigns` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Campaign Account" in Explore.

  dimension: campaign_account {
    type: string
    sql: ${TABLE}.campaign_account ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}
