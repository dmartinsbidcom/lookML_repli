# The name of this view in Looker is "Ds Presupuestos Despachos Tomadoapp"
view: ds_presupuestos_despachos_tomadoapp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.despachos_tomadoapp` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cantidad Tomada" in Explore.

  dimension: cantidad_tomada {
    type: number
    sql: ${TABLE}.cantidadTomada ;;
  }

  dimension: codigo_producto {
    type: string
    sql: ${TABLE}.codigoProducto ;;
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

  dimension: id_despacho {
    type: number
    sql: ${TABLE}.idDespacho ;;
  }

  dimension: id_despacho_tomado {
    type: number
    sql: ${TABLE}.idDespachoTomado ;;
  }

  dimension: id_producto {
    type: number
    sql: ${TABLE}.idProducto ;;
  }
  measure: count {
    type: count
  }
}
