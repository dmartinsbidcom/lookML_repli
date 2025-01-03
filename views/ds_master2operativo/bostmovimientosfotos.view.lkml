# The name of this view in Looker is "Bostmovimientosfotos"
view: bostmovimientosfotos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2operativo.bostmovimientosfotos` ;;

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

  dimension: descripcionfoto {
    type: string
    sql: ${TABLE}.descripcionfoto ;;
  }

  dimension: fecha_bo_st_movimiento_foto {
    type: number
    sql: ${TABLE}.FechaBoStMovimientoFoto ;;
  }

  dimension: hora_bo_st_movimiento_foto {
    type: string
    sql: ${TABLE}.HoraBoStMovimientoFoto ;;
  }

  dimension: id_bo_reparacion {
    type: number
    sql: ${TABLE}.idBoReparacion ;;
  }

  dimension: id_bocomprobante {
    type: number
    sql: ${TABLE}.idBOComprobante ;;
  }

  dimension: id_bost_movimiento {
    type: number
    sql: ${TABLE}.idBOStMovimiento ;;
  }

  dimension: idbostmovimientos_fotos {
    type: number
    sql: ${TABLE}.idbostmovimientosFotos ;;
  }

  dimension: idusuario {
    type: number
    sql: ${TABLE}.idusuario ;;
  }

  dimension: nombre_foto {
    type: string
    sql: ${TABLE}.nombreFoto ;;
  }

  dimension: nro_foto {
    type: number
    sql: ${TABLE}.nroFoto ;;
  }
  measure: count {
    type: count
  }
}
