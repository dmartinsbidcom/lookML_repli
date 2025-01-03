# The name of this view in Looker is "Ds Master2extraorditech Stprecios"
view: ds_master2extraorditech_stprecios {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2extraorditech.stprecios` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cambio St Precio" in Explore.

  dimension: cambio_st_precio {
    type: number
    sql: ${TABLE}.CambioStPrecio ;;
  }

  dimension: codigo_st_producto {
    type: string
    sql: ${TABLE}.CodigoStProducto ;;
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

  dimension: fecha_actualizacion_st_precio {
    type: number
    sql: ${TABLE}.FechaActualizacionStPrecio ;;
  }

  dimension: id_st_lista_precios {
    type: number
    sql: ${TABLE}.IdStListaPrecios ;;
  }

  dimension: id_st_precio {
    type: number
    sql: ${TABLE}.IdStPrecio ;;
  }

  dimension: id_st_producto {
    type: number
    sql: ${TABLE}.IdStProducto ;;
  }

  dimension: precio_st_precio {
    type: number
    sql: ${TABLE}.PrecioStPrecio ;;
  }
  measure: count {
    type: count
  }
}
