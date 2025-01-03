# The name of this view in Looker is "Ds Checkoutbidcom Fichas"
view: ds_checkoutbidcom_fichas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_checkoutbidcom.fichas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Categorias Web" in Explore.

  dimension: categorias_web {
    type: string
    sql: ${TABLE}.categorias_web ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: codigo_producto {
    type: string
    sql: ${TABLE}.codigo_producto ;;
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

  dimension: disponible_para_mayorista {
    type: string
    sql: ${TABLE}.disponible_para_mayorista ;;
  }

  dimension: info_a_destacar {
    type: string
    sql: ${TABLE}.info_a_destacar ;;
  }

  dimension: informacion_tecnica {
    type: string
    sql: ${TABLE}.informacion_tecnica ;;
  }

  dimension: link_adicionales {
    type: string
    sql: ${TABLE}.link_adicionales ;;
  }

  dimension: link_publicacion {
    type: string
    sql: ${TABLE}.link_publicacion ;;
  }

  dimension: manual_software_drivers {
    type: string
    sql: ${TABLE}.manual_software_drivers ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: marca_temporal {
    type: string
    sql: ${TABLE}.marca_temporal ;;
  }

  dimension: mini_texto {
    type: string
    sql: ${TABLE}.mini_texto ;;
  }

  dimension: modelos {
    type: string
    sql: ${TABLE}.modelos ;;
  }

  dimension: precio {
    type: string
    sql: ${TABLE}.precio ;;
  }

  dimension: productos_relacionados {
    type: string
    sql: ${TABLE}.productos_relacionados ;;
  }

  dimension: protocols_docs_creator {
    type: string
    sql: ${TABLE}.protocols_docs_creator ;;
  }

  dimension: realizar_video {
    type: string
    sql: ${TABLE}.realizar_video ;;
  }

  dimension: revisado {
    type: string
    sql: ${TABLE}.revisado ;;
  }

  dimension: se_entrega_con {
    type: string
    sql: ${TABLE}.se_entrega_con ;;
  }

  dimension: subtitulo {
    type: string
    sql: ${TABLE}.subtitulo ;;
  }

  dimension: titulo {
    type: string
    sql: ${TABLE}.titulo ;;
  }

  dimension: ya_se_puede_publicar {
    type: string
    sql: ${TABLE}.ya_se_puede_publicar ;;
  }
  measure: count {
    type: count
  }
}
