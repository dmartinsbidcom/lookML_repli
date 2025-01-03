# The name of this view in Looker is "Ds Master2bemotec Stventasperdidas"
view: ds_master2bemotec_stventasperdidas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bemotec.stventasperdidas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cantidad St Venta Perdida" in Explore.

  dimension: cantidad_st_venta_perdida {
    type: number
    sql: ${TABLE}.CantidadStVentaPerdida ;;
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

  dimension: fecha_st_venta_perdida {
    type: number
    sql: ${TABLE}.FechaStVentaPerdida ;;
  }

  dimension: id_st_producto {
    type: number
    sql: ${TABLE}.IdStProducto ;;
  }

  dimension: id_st_venta_perdida {
    type: number
    sql: ${TABLE}.IdStVentaPerdida ;;
  }

  dimension: id_usuario {
    type: number
    sql: ${TABLE}.IdUsuario ;;
  }
  measure: count {
    type: count
  }
}
