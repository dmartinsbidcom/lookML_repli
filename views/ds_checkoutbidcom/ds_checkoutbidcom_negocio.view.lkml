# The name of this view in Looker is "Ds Checkoutbidcom Negocio"
view: ds_checkoutbidcom_negocio {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_checkoutbidcom.Negocio` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Datastream Metadata Is Deleted" in Explore.

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

  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: id_negocio {
    type: number
    sql: ${TABLE}.IdNegocio ;;
  }

  dimension: id_vendedor {
    type: number
    sql: ${TABLE}.IdVendedor ;;
  }

  dimension: remitente {
    type: string
    sql: ${TABLE}.Remitente ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }

  dimension: urlexito {
    type: string
    sql: ${TABLE}.URLExito ;;
  }

  dimension: urlfracaso {
    type: string
    sql: ${TABLE}.URLFracaso ;;
  }
  measure: count {
    type: count
  }
}
