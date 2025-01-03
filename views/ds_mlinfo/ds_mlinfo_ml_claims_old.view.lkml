# The name of this view in Looker is "Ds Mlinfo Ml Claims Old"
view: ds_mlinfo_ml_claims_old {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_mlinfo.ml_claims_old` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Complainant Type" in Explore.

  dimension: complainant_type {
    type: string
    sql: ${TABLE}.complainant_type ;;
  }

  dimension: complainant_user_id {
    type: number
    sql: ${TABLE}.complainant_user_id ;;
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

  dimension: date_created {
    type: string
    sql: ${TABLE}.date_created ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: last_updated {
    type: string
    sql: ${TABLE}.last_updated ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}.parent_id ;;
  }

  dimension: reason_id {
    type: string
    sql: ${TABLE}.reason_id ;;
  }

  dimension: resolution_benefited {
    type: string
    sql: ${TABLE}.resolution_benefited ;;
  }

  dimension: resolution_closed_by {
    type: string
    sql: ${TABLE}.resolution_closed_by ;;
  }

  dimension: resolution_date_created {
    type: string
    sql: ${TABLE}.resolution_date_created ;;
  }

  dimension: resolution_reason {
    type: string
    sql: ${TABLE}.resolution_reason ;;
  }

  dimension: resource {
    type: string
    sql: ${TABLE}.resource ;;
  }

  dimension: resource_id {
    type: number
    sql: ${TABLE}.resource_id ;;
  }

  dimension: respondent_type {
    type: string
    sql: ${TABLE}.respondent_type ;;
  }

  dimension: respondent_user_id {
    type: number
    sql: ${TABLE}.respondent_user_id ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}.stage ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  measure: count {
    type: count
  }
}
