# The name of this view in Looker is "Ds Checkoutbidcom Chk Carrito Temp"
view: ds_checkoutbidcom_chk_carrito_temp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_checkoutbidcom.CHK_CarritoTemp` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Carrito ID" in Explore.

  dimension: carrito_id {
    type: number
    sql: ${TABLE}.carrito_id ;;
  }

  dimension: costo_envio {
    type: string
    sql: ${TABLE}.costo_envio ;;
  }

  dimension: costo_transaccion {
    type: number
    sql: ${TABLE}.costo_transaccion ;;
  }

  dimension: cuit {
    type: string
    sql: ${TABLE}.cuit ;;
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

  dimension: id_datos_fiscales_temp {
    type: number
    sql: ${TABLE}.idDatosFiscalesTemp ;;
  }

  dimension: tipo_factura {
    type: string
    sql: ${TABLE}.tipo_factura ;;
  }
  measure: count {
    type: count
  }
}
