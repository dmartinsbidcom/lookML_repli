# The name of this view in Looker is "Ds Master2cabainnov Admchequespropios"
view: ds_master2cabainnov_admchequespropios {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2cabainnov.admchequespropios` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Datastream Metadata Source Timestamp" in Explore.

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

  dimension: femision_cheque_propio {
    type: number
    sql: ${TABLE}.FEmisionChequePropio ;;
  }

  dimension: fpago_cheque_propio {
    type: number
    sql: ${TABLE}.FPagoChequePropio ;;
  }

  dimension: id_cheque_propio {
    type: number
    sql: ${TABLE}.IdChequePropio ;;
  }

  dimension: id_imputacion {
    type: number
    sql: ${TABLE}.IdImputacion ;;
  }

  dimension: idchequera {
    type: number
    sql: ${TABLE}.idchequera ;;
  }

  dimension: no_ala_orden_cheque_propio {
    type: number
    sql: ${TABLE}.NoALaOrdenChequePropio ;;
  }

  dimension: numero_cheque_propio {
    type: number
    sql: ${TABLE}.NumeroChequePropio ;;
  }

  dimension: pasarabancochequepropio {
    type: number
    sql: ${TABLE}.pasarabancochequepropio ;;
  }
  measure: count {
    type: count
  }
}
