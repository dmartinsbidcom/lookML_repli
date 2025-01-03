# The name of this view in Looker is "Checkoutbidcom Testcheckoutbidcom Chk Carrito Productos"
view: checkoutbidcom_testcheckoutbidcom_chk_carrito_productos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `checkoutbidcom_testcheckoutbidcom.CHK_CarritoProductos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cantidad" in Explore.

  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }

  dimension: carrito_id {
    type: number
    sql: ${TABLE}.carrito_id ;;
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
    sql: ${TABLE}.descripcion ;;
  }

  dimension: foto {
    type: string
    sql: ${TABLE}.foto ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: manufacturing_time_days {
    type: number
    sql: ${TABLE}.manufacturing_time_days ;;
  }

  dimension: numero_ezflp {
    type: string
    sql: ${TABLE}.numero_ezflp ;;
  }

  dimension: precio {
    type: number
    sql: ${TABLE}.precio ;;
  }

  dimension: precio_12_cuota {
    type: number
    sql: ${TABLE}.precio_12_cuota ;;
  }

  dimension: precio_3_cuota {
    type: number
    sql: ${TABLE}.precio_3_cuota ;;
  }

  dimension: precio_6_cuota {
    type: number
    sql: ${TABLE}.precio_6_cuota ;;
  }

  dimension: producto_id {
    type: number
    sql: ${TABLE}.producto_id ;;
  }

  dimension: tipo_costo_envio {
    type: number
    sql: ${TABLE}.tipo_costo_envio ;;
  }
  measure: count {
    type: count
  }
}
