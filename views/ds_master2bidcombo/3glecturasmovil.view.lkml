# The name of this view in Looker is "3glecturasmovil"
view: 3glecturasmovil {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bidcombo.3glecturasmovil` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cantidad Lectura Movil" in Explore.

  dimension: cantidad_lectura_movil {
    type: number
    sql: ${TABLE}.CantidadLecturaMovil ;;
  }

  dimension: comentarios3_glecturasmovil {
    type: string
    sql: ${TABLE}.comentarios3Glecturasmovil ;;
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

  dimension: fecha_lectura_movil {
    type: number
    sql: ${TABLE}.FechaLecturaMovil ;;
  }

  dimension: gps3_glecturasmovil {
    type: string
    sql: ${TABLE}.GPS3Glecturasmovil ;;
  }

  dimension: hora_lectura_movil {
    type: string
    sql: ${TABLE}.HoraLecturaMovil ;;
  }

  dimension: id3grepartidoresmovil {
    type: number
    sql: ${TABLE}.id3grepartidoresmovil ;;
  }

  dimension: id3gusuariomovil {
    type: number
    sql: ${TABLE}.id3gusuariomovil ;;
  }

  dimension: id_bo_dep_ubicacion {
    type: number
    sql: ${TABLE}.idBoDepUbicacion ;;
  }

  dimension: id_bo_pv_estado {
    type: number
    sql: ${TABLE}.idBoPvEstado ;;
  }

  dimension: id_clasif_lectura_movil {
    type: number
    sql: ${TABLE}.idClasifLecturaMovil ;;
  }

  dimension: id_lectura_movil {
    type: number
    sql: ${TABLE}.idLecturaMovil ;;
  }

  dimension: idusuario {
    type: number
    sql: ${TABLE}.idusuario ;;
  }

  dimension: idusuariotecnico {
    type: number
    sql: ${TABLE}.idusuariotecnico ;;
  }

  dimension: motivo_no_entrega3_glecturasmovil {
    type: string
    sql: ${TABLE}.motivoNoEntrega3Glecturasmovil ;;
  }

  dimension: texto_lectura_movil {
    type: string
    sql: ${TABLE}.TextoLecturaMovil ;;
  }
  measure: count {
    type: count
  }
}
