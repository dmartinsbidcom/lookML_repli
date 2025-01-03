# The name of this view in Looker is "Ds Master2bidcombo Productos Subcategorias"
view: ds_master2bidcombo_productos_subcategorias {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bidcombo.productos_subcategorias` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Datastream Metadata Source Timestamp" in Explore.

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

  dimension_group: fecha_baja_producto_sub_categoria {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaBajaProductoSubCategoria ;;
  }

  dimension: id_producto_categoria {
    type: number
    sql: ${TABLE}.idProductoCategoria ;;
  }

  dimension: id_producto_sub_categoria {
    type: number
    sql: ${TABLE}.idProductoSubCategoria ;;
  }

  dimension: id_usuario_baja_producto_sub_categoria {
    type: number
    sql: ${TABLE}.idUsuarioBajaProductoSubCategoria ;;
  }

  dimension: nombre_producto_sub_categoria {
    type: string
    sql: ${TABLE}.nombreProductoSubCategoria ;;
  }
  measure: count {
    type: count
  }
}
