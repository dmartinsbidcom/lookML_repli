# The name of this view in Looker is "Ds Newhome Proyecto Sofia"
view: ds_newhome_proyecto_sofia {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_newhome.proyecto_sofia` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Calificacion" in Explore.

  dimension: calificacion {
    type: string
    sql: ${TABLE}.calificacion ;;
  }

  dimension: celular {
    type: string
    sql: ${TABLE}.celular ;;
  }

  dimension: comentario {
    type: string
    sql: ${TABLE}.comentario ;;
  }

  dimension: datastream_metadata__is_deleted {
    type: yesno
    sql: ${TABLE}.datastream_metadata.is_deleted ;;
    group_label: "Datastream Metadata"
    group_item_label: "Is Deleted"
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

  dimension: fecha_compra {
    type: string
    sql: ${TABLE}.fecha_compra ;;
  }

  dimension: fecha_participacion {
    type: string
    sql: ${TABLE}.fecha_participacion ;;
  }

  dimension: mail_calificacion_positiva {
    type: string
    sql: ${TABLE}.mail_calificacion_positiva ;;
  }

  dimension: mail_canal {
    type: string
    sql: ${TABLE}.mail_canal ;;
  }

  dimension: nro_cupon {
    type: string
    sql: ${TABLE}.nro_cupon ;;
  }

  dimension: numero_comprobante {
    type: string
    sql: ${TABLE}.numero_comprobante ;;
  }

  dimension: otro_canal {
    type: number
    sql: ${TABLE}.otro_canal ;;
  }

  dimension: user_meli {
    type: string
    sql: ${TABLE}.user_meli ;;
  }

  dimension: usuario_valido {
    type: string
    sql: ${TABLE}.usuario_valido ;;
  }
  measure: count {
    type: count
  }
}
