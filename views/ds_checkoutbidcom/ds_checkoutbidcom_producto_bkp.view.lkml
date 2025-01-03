# The name of this view in Looker is "Ds Checkoutbidcom Producto Bkp"
view: ds_checkoutbidcom_producto_bkp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_checkoutbidcom.Producto_bkp` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo Producto" in Explore.

  dimension: codigo_producto {
    type: string
    sql: ${TABLE}.CodigoProducto ;;
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
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }

  dimension: garantia {
    type: number
    sql: ${TABLE}.Garantia ;;
  }

  dimension: id_producto {
    type: number
    sql: ${TABLE}.IdProducto ;;
  }

  dimension: imagen_wp {
    type: string
    sql: ${TABLE}.ImagenWP ;;
  }

  dimension: meses_garantia {
    type: number
    sql: ${TABLE}.MesesGarantia ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  dimension: pausado {
    type: number
    sql: ${TABLE}.Pausado ;;
  }

  dimension: precio {
    type: number
    sql: ${TABLE}.Precio ;;
  }

  dimension: precio_pagina {
    type: number
    sql: ${TABLE}.PrecioPagina ;;
  }

  dimension: tipo_costo_envio {
    type: string
    sql: ${TABLE}.TipoCostoEnvio ;;
  }
  measure: count {
    type: count
  }
}
