# The name of this view in Looker is "3grelusuarioclasifmovil"
view: 3grelusuarioclasifmovil {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bidcombo.3grelusuarioclasifmovil` ;;

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

  dimension: id3_gclasif_lectura_movil {
    type: number
    sql: ${TABLE}.id3GClasifLecturaMovil ;;
  }

  dimension: id3_gusuario_movil {
    type: number
    sql: ${TABLE}.id3GUsuarioMovil ;;
  }

  dimension: id_rel_usuario_clasif_movil {
    type: number
    sql: ${TABLE}.idRelUsuarioClasifMovil ;;
  }
  measure: count {
    type: count
  }
}
