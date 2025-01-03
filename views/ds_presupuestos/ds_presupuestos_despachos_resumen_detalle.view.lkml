# The name of this view in Looker is "Ds Presupuestos Despachos Resumen Detalle"
view: ds_presupuestos_despachos_resumen_detalle {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.despachos_resumen_detalle` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cantidad" in Explore.

  dimension: cantidad {
    type: number
    sql: ${TABLE}.Cantidad ;;
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

  dimension: descripcion_producto {
    type: string
    sql: ${TABLE}.descripcionProducto ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.idComprobante ;;
  }

  dimension: id_despacho {
    type: number
    sql: ${TABLE}.idDespacho ;;
  }

  dimension: id_producto {
    type: number
    sql: ${TABLE}.idProducto ;;
  }

  dimension: id_resumen {
    type: number
    sql: ${TABLE}.idResumen ;;
  }

  dimension: observacion {
    type: string
    sql: ${TABLE}.Observacion ;;
  }

  dimension: posicion_piso {
    type: string
    sql: ${TABLE}.posicion_piso ;;
  }

  dimension: posicion_racks {
    type: string
    sql: ${TABLE}.posicion_racks ;;
  }
  measure: count {
    type: count
  }
}
