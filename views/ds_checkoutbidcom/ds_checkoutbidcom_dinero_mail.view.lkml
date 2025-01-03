# The name of this view in Looker is "Ds Checkoutbidcom Dinero Mail"
view: ds_checkoutbidcom_dinero_mail {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_checkoutbidcom.DineroMail` ;;

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

  dimension: digito {
    type: number
    sql: ${TABLE}.Digito ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: nro_cta_dm {
    type: number
    sql: ${TABLE}.NroCtaDM ;;
  }

  dimension: pago_en_sucursal {
    type: number
    sql: ${TABLE}.PagoEnSucursal ;;
  }

  dimension: pin {
    type: string
    sql: ${TABLE}.Pin ;;
  }

  dimension: producto_generico {
    type: number
    sql: ${TABLE}.ProductoGenerico ;;
  }
  measure: count {
    type: count
  }
}
