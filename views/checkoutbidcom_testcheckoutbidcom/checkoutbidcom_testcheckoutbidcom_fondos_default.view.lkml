# The name of this view in Looker is "Checkoutbidcom Testcheckoutbidcom Fondos Default"
view: checkoutbidcom_testcheckoutbidcom_fondos_default {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `checkoutbidcom_testcheckoutbidcom.FondosDefault` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cuenta Dm" in Explore.

  dimension: cuenta_dm {
    type: number
    sql: ${TABLE}.CuentaDM ;;
  }

  dimension: cuenta_mp {
    type: number
    sql: ${TABLE}.CuentaMP ;;
  }

  dimension: cuenta_tp {
    type: number
    sql: ${TABLE}.CuentaTP ;;
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

  dimension: desde {
    type: number
    sql: ${TABLE}.Desde ;;
  }

  dimension: hasta {
    type: number
    sql: ${TABLE}.Hasta ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.Id ;;
  }
  measure: count {
    type: count
  }
}