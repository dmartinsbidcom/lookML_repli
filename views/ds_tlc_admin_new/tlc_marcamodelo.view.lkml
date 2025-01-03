# The name of this view in Looker is "Tlc Marcamodelo"
view: tlc_marcamodelo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_tlc_admin_new.tlc_marcamodelo` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Caracteristicas Tecnicas" in Explore.

  dimension: caracteristicas_tecnicas {
    type: string
    sql: ${TABLE}.caracteristicas_tecnicas ;;
  }

  dimension: certificado_id {
    type: number
    sql: ${TABLE}.certificado_id ;;
  }

  dimension: clase3_id {
    type: number
    sql: ${TABLE}.clase3_id ;;
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

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: link_etiqueta {
    type: string
    sql: ${TABLE}.link_etiqueta ;;
  }

  dimension: link_referencia {
    type: string
    sql: ${TABLE}.link_referencia ;;
  }

  dimension: manual_espanol {
    type: string
    sql: ${TABLE}.manual_espanol ;;
  }

  dimension: marca_id {
    type: number
    sql: ${TABLE}.marca_id ;;
  }

  dimension: modelo_id {
    type: number
    sql: ${TABLE}.modelo_id ;;
  }

  dimension: muestra {
    type: number
    sql: ${TABLE}.muestra ;;
  }

  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }

  dimension: producto_id {
    type: string
    sql: ${TABLE}.producto_id ;;
  }
  measure: count {
    type: count
  }
}
