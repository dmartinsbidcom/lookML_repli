# The name of this view in Looker is "Ficha Nueva"
view: ficha_nueva {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.ficha_nueva` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "A Destacar Imagenes" in Explore.

  dimension: a_destacar_imagenes {
    type: string
    sql: ${TABLE}.a_destacar_imagenes ;;
  }

  dimension: alto_comercial {
    type: number
    sql: ${TABLE}.alto_comercial ;;
  }

  dimension: ancho_comercial {
    type: number
    sql: ${TABLE}.ancho_comercial ;;
  }

  dimension: aprobado {
    type: string
    sql: ${TABLE}.aprobado ;;
  }

  dimension: attr {
    type: string
    sql: ${TABLE}.attr ;;
  }

  dimension: caracteristicas {
    type: string
    sql: ${TABLE}.caracteristicas ;;
  }

  dimension: caracteristicas_principales_segunda_imagen {
    type: string
    sql: ${TABLE}.caracteristicas_principales_segunda_imagen ;;
  }

  dimension: categoria_principal_producto {
    type: number
    sql: ${TABLE}.categoria_principal_producto ;;
  }

  dimension: categorias {
    type: string
    sql: ${TABLE}.categorias ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: certificacion {
    type: string
    sql: ${TABLE}.certificacion ;;
  }

  dimension: codigo_aguila {
    type: string
    sql: ${TABLE}.codigo_aguila ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }

  dimension: composicion_kit {
    type: string
    sql: ${TABLE}.composicion_kit ;;
  }

  dimension: consultar_precio {
    type: number
    sql: ${TABLE}.consultar_precio ;;
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

  dimension: descripcion_producto {
    type: string
    sql: ${TABLE}.descripcion_producto ;;
  }

  dimension: descripcion_video {
    type: string
    sql: ${TABLE}.descripcion_video ;;
  }

  dimension: devolucion {
    type: string
    sql: ${TABLE}.devolucion ;;
  }

  dimension: ean {
    type: string
    sql: ${TABLE}.ean ;;
  }

  dimension: en_pausa {
    type: number
    sql: ${TABLE}.en_pausa ;;
  }

  dimension: envio {
    type: number
    sql: ${TABLE}.envio ;;
  }

  dimension: envio_gratis {
    type: number
    sql: ${TABLE}.envio_gratis ;;
  }

  dimension: es_kit {
    type: number
    sql: ${TABLE}.es_kit ;;
  }

  dimension: estado_ficha {
    type: string
    sql: ${TABLE}.estado_ficha ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_actualizacion ;;
  }

  dimension_group: fecha_aprobado {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_aprobado ;;
  }

  dimension_group: fecha_aprobado_category {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_aprobado_category ;;
  }

  dimension_group: fecha_aprobado_comercial {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_aprobado_comercial ;;
  }

  dimension_group: fecha_aprobado_marketing {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_aprobado_marketing ;;
  }

  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_creacion ;;
  }

  dimension: fecha_desaprobado {
    type: string
    sql: ${TABLE}.fecha_desaprobado ;;
  }

  dimension_group: fecha_publicado {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_publicado ;;
  }

  dimension: fecha_publicando {
    type: string
    sql: ${TABLE}.fecha_publicando ;;
  }

  dimension: habilitar_mayorista {
    type: number
    sql: ${TABLE}.habilitar_mayorista ;;
  }

  dimension: hacer_video {
    type: number
    sql: ${TABLE}.hacer_video ;;
  }

  dimension: id_ficha {
    type: number
    sql: ${TABLE}.id_ficha ;;
  }

  dimension: largo_comercial {
    type: number
    sql: ${TABLE}.largo_comercial ;;
  }

  dimension: linea {
    type: string
    sql: ${TABLE}.linea ;;
  }

  dimension: link_competencia {
    type: string
    sql: ${TABLE}.link_competencia ;;
  }

  dimension: link_control_calidad {
    type: string
    sql: ${TABLE}.link_control_calidad ;;
  }

  dimension: link_distribuidor {
    type: string
    sql: ${TABLE}.link_distribuidor ;;
  }

  dimension: link_video {
    type: string
    sql: ${TABLE}.link_video ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: meses_garantia {
    type: number
    sql: ${TABLE}.meses_garantia ;;
  }

  dimension: modelo_producto {
    type: string
    sql: ${TABLE}.modelo_producto ;;
  }

  dimension: motivo_desaprobado {
    type: string
    sql: ${TABLE}.motivo_desaprobado ;;
  }

  dimension: nombre_generico {
    type: string
    sql: ${TABLE}.nombre_generico ;;
  }

  dimension: numero_certificacion {
    type: string
    sql: ${TABLE}.numero_certificacion ;;
  }

  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }

  dimension: paso {
    type: number
    sql: ${TABLE}.paso ;;
  }

  dimension: peso {
    type: number
    sql: ${TABLE}.peso ;;
  }

  dimension: peso_comercial {
    type: number
    sql: ${TABLE}.peso_comercial ;;
  }

  dimension: posesion {
    type: string
    sql: ${TABLE}.posesion ;;
  }

  dimension: post_title {
    type: string
    sql: ${TABLE}.post_title ;;
  }

  dimension: precio {
    type: number
    sql: ${TABLE}.precio ;;
  }

  dimension: relevancia {
    type: string
    sql: ${TABLE}.relevancia ;;
  }

  dimension: se_entrega_con {
    type: string
    sql: ${TABLE}.se_entrega_con ;;
  }

  dimension: subtitulo {
    type: string
    sql: ${TABLE}.subtitulo ;;
  }

  dimension: sugerencias_primera_imagen_fondo_blanco {
    type: string
    sql: ${TABLE}.sugerencias_primera_imagen_fondo_blanco ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: tipo_ficha {
    type: number
    sql: ${TABLE}.tipo_ficha ;;
  }

  dimension: user_actualizacion {
    type: string
    sql: ${TABLE}.user_actualizacion ;;
  }

  dimension: user_aprobado {
    type: string
    sql: ${TABLE}.user_aprobado ;;
  }

  dimension: user_aprobado_category {
    type: string
    sql: ${TABLE}.user_aprobado_category ;;
  }

  dimension: user_aprobado_comercial {
    type: string
    sql: ${TABLE}.user_aprobado_comercial ;;
  }

  dimension: user_aprobado_marketing {
    type: string
    sql: ${TABLE}.user_aprobado_marketing ;;
  }

  dimension: user_creador {
    type: string
    sql: ${TABLE}.user_creador ;;
  }

  dimension: user_desaprobado {
    type: string
    sql: ${TABLE}.user_desaprobado ;;
  }

  dimension: user_publicado {
    type: string
    sql: ${TABLE}.user_publicado ;;
  }

  dimension: user_publicando {
    type: string
    sql: ${TABLE}.user_publicando ;;
  }

  dimension: variantes {
    type: string
    sql: ${TABLE}.variantes ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }
  measure: count {
    type: count
  }
}
