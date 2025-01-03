# The name of this view in Looker is "Ds Master2comprarapido Stcarritoguardado"
view: ds_master2comprarapido_stcarritoguardado {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2comprarapido.stcarritoguardado` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Comentario St Carrito" in Explore.

  dimension: comentario_st_carrito {
    type: string
    sql: ${TABLE}.comentarioStCarrito ;;
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

  dimension: fecha_st_carrito {
    type: number
    sql: ${TABLE}.fechaStCarrito ;;
  }

  dimension: hora_st_carrito {
    type: string
    sql: ${TABLE}.horaStCarrito ;;
  }

  dimension: id_st_carrito {
    type: number
    sql: ${TABLE}.idStCarrito ;;
  }

  dimension: id_usuario {
    type: number
    sql: ${TABLE}.idUsuario ;;
  }

  dimension: nombre_cliente_st_carrito {
    type: string
    sql: ${TABLE}.nombreClienteStCarrito ;;
  }
  measure: count {
    type: count
  }
}
