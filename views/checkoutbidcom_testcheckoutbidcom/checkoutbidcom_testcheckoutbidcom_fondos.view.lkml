# The name of this view in Looker is "Checkoutbidcom Testcheckoutbidcom Fondos"
view: checkoutbidcom_testcheckoutbidcom_fondos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `checkoutbidcom_testcheckoutbidcom.Fondos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Acumulado" in Explore.

  dimension: acumulado {
    type: number
    sql: ${TABLE}.Acumulado ;;
  }

  dimension: cuenta_bancaria_id {
    type: number
    sql: ${TABLE}.CuentaBancariaId ;;
  }

  dimension: cuenta_bidcom {
    type: number
    sql: ${TABLE}.CuentaBidcom ;;
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

  dimension: id {
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: limite {
    type: number
    sql: ${TABLE}.Limite ;;
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.Periodo ;;
  }

  dimension: proveedor {
    type: string
    sql: ${TABLE}.Proveedor ;;
  }

  dimension: proveedor_id {
    type: number
    sql: ${TABLE}.ProveedorId ;;
  }
  measure: count {
    type: count
  }
}
