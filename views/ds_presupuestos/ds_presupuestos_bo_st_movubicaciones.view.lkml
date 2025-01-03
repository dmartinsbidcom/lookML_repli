# The name of this view in Looker is "Ds Presupuestos Bo St Movubicaciones"
view: ds_presupuestos_bo_st_movubicaciones {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.bo_st_movubicaciones` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cantidad Bo St Mov Ubicacion" in Explore.

  dimension: cantidad_bo_st_mov_ubicacion {
    type: number
    sql: ${TABLE}.CantidadBoStMovUbicacion ;;
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

  dimension_group: fecha_bo_st_mov_ubicacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FechaBoStMovUbicacion ;;
  }

  dimension: id_bo_st_mov_ubicacion {
    type: number
    sql: ${TABLE}.idBoStMovUbicacion ;;
  }

  dimension: id_bo_st_ubicacion {
    type: number
    sql: ${TABLE}.idBoStUbicacion ;;
  }

  dimension: id_producto {
    type: number
    sql: ${TABLE}.idProducto ;;
  }

  dimension: id_usuario {
    type: number
    sql: ${TABLE}.idUsuario ;;
  }

  dimension: observaciones_movimientos {
    type: string
    sql: ${TABLE}.observacionesMovimientos ;;
  }

  dimension: tipo_bo_st_mov_ubicacion {
    type: string
    sql: ${TABLE}.TipoBoStMovUbicacion ;;
  }
  measure: count {
    type: count
  }
}
