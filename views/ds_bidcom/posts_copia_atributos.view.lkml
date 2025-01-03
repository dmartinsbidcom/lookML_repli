# The name of this view in Looker is "Posts Copia Atributos"
view: posts_copia_atributos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_bidcom.posts_copia_atributos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Alto" in Explore.

  dimension: alto {
    type: number
    sql: ${TABLE}.alto ;;
  }

  dimension: ancho {
    type: number
    sql: ${TABLE}.ancho ;;
  }

  dimension: apto_ahora_12 {
    type: number
    sql: ${TABLE}.apto_ahora_12 ;;
  }

  dimension: apto_microcentro {
    type: number
    sql: ${TABLE}.apto_microcentro ;;
  }

  dimension: atributos {
    type: string
    sql: ${TABLE}.atributos ;;
  }

  dimension: attr {
    type: string
    sql: ${TABLE}.attr ;;
  }

  dimension: categoria_principal_name {
    type: string
    sql: ${TABLE}.categoria_principal_name ;;
  }

  dimension: categoria_principal_producto {
    type: number
    sql: ${TABLE}.categoria_principal_producto ;;
  }

  dimension: categoria_principal_slug {
    type: string
    sql: ${TABLE}.categoria_principal_slug ;;
  }

  dimension: codigo_aguila {
    type: string
    sql: ${TABLE}.codigo_aguila ;;
  }

  dimension: costo {
    type: number
    sql: ${TABLE}.costo ;;
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

  dimension: descripcion_producto {
    type: string
    sql: ${TABLE}.descripcion_producto ;;
  }

  dimension: descuento {
    type: number
    sql: ${TABLE}.descuento ;;
  }

  dimension: descuento_beneficio {
    type: number
    sql: ${TABLE}.descuento_beneficio ;;
  }

  dimension: distribuidor_oficial {
    type: string
    sql: ${TABLE}.distribuidor_oficial ;;
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

  dimension: estrategia {
    type: string
    sql: ${TABLE}.estrategia ;;
  }

  dimension: fields {
    type: string
    sql: ${TABLE}.fields ;;
  }

  dimension: guid {
    type: string
    sql: ${TABLE}.guid ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: id_producto {
    type: number
    sql: ${TABLE}.id_producto ;;
  }

  dimension: imagen_calada {
    type: string
    sql: ${TABLE}.imagen_calada ;;
  }

  dimension: largo {
    type: number
    sql: ${TABLE}.largo ;;
  }

  dimension: linea {
    type: string
    sql: ${TABLE}.linea ;;
  }

  dimension: manual {
    type: number
    sql: ${TABLE}.manual ;;
  }

  dimension: manufacturing_time_days {
    type: number
    sql: ${TABLE}.manufacturing_time_days ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: mas_vendido {
    type: number
    sql: ${TABLE}.mas_vendido ;;
  }

  dimension: meses_garantia {
    type: number
    sql: ${TABLE}.meses_garantia ;;
  }

  dimension: modificado_por {
    type: string
    sql: ${TABLE}.modificado_por ;;
  }

  dimension: mostrar_devolucion {
    type: number
    sql: ${TABLE}.mostrar_devolucion ;;
  }

  dimension: noindex {
    type: number
    sql: ${TABLE}.noindex ;;
  }

  dimension: nro_certificado {
    type: string
    sql: ${TABLE}.nro_certificado ;;
  }

  dimension: numero_ezflp {
    type: string
    sql: ${TABLE}.numero_ezflp ;;
  }

  dimension: orden_producto {
    type: number
    sql: ${TABLE}.orden_producto ;;
  }

  dimension: orden_producto_semanal {
    type: number
    sql: ${TABLE}.orden_producto_semanal ;;
  }

  dimension: orden_web {
    type: number
    sql: ${TABLE}.orden_web ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.owner ;;
  }

  dimension: pausado_automatico {
    type: number
    sql: ${TABLE}.pausado_automatico ;;
  }

  dimension: peso {
    type: number
    sql: ${TABLE}.peso ;;
  }

  dimension: pex {
    type: number
    sql: ${TABLE}.pex ;;
  }

  dimension: poner_en_oferta {
    type: number
    sql: ${TABLE}.poner_en_oferta ;;
  }

  dimension: porcentaje_max_devolucion {
    type: number
    sql: ${TABLE}.porcentaje_max_devolucion ;;
  }

  dimension: porcentaje_min_devolucion {
    type: number
    sql: ${TABLE}.porcentaje_min_devolucion ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: post {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.post_date ;;
  }

  dimension_group: post_modified {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.post_modified ;;
  }

  dimension: post_name {
    type: string
    sql: ${TABLE}.post_name ;;
  }

  dimension: post_status {
    type: string
    sql: ${TABLE}.post_status ;;
  }

  dimension: post_title {
    type: string
    sql: ${TABLE}.post_title ;;
  }

  dimension: post_type {
    type: string
    sql: ${TABLE}.post_type ;;
  }

  dimension: precio {
    type: number
    sql: ${TABLE}.precio ;;
  }

  dimension: precio_12_cuotas {
    type: number
    sql: ${TABLE}.precio_12_cuotas ;;
  }

  dimension: precio_3_cuotas {
    type: number
    sql: ${TABLE}.precio_3_cuotas ;;
  }

  dimension: precio_6_cuotas {
    type: number
    sql: ${TABLE}.precio_6_cuotas ;;
  }

  dimension: precio_interno {
    type: number
    sql: ${TABLE}.precio_interno ;;
  }

  dimension: precio_outlet {
    type: number
    sql: ${TABLE}.precio_outlet ;;
  }

  dimension: precio_tachado {
    type: number
    sql: ${TABLE}.precio_tachado ;;
  }

  dimension: precio_usados {
    type: number
    sql: ${TABLE}.precio_usados ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.rate ;;
  }

  dimension: recomendado {
    type: number
    sql: ${TABLE}.recomendado ;;
  }

  dimension: subir_shopping {
    type: number
    sql: ${TABLE}.subir_shopping ;;
  }

  dimension: subtitulo {
    type: string
    sql: ${TABLE}.subtitulo ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: tipo_envio {
    type: string
    sql: ${TABLE}.tipo_envio ;;
  }

  dimension: tipo_oferta {
    type: string
    sql: ${TABLE}.tipo_oferta ;;
  }

  dimension: titulo_texto_plano_ml {
    type: string
    sql: ${TABLE}.titulo_texto_plano_ml ;;
  }

  dimension: tomar_precio_mla {
    type: string
    sql: ${TABLE}.tomar_precio_mla ;;
  }

  dimension: voluminoso {
    type: number
    sql: ${TABLE}.voluminoso ;;
  }
  measure: count {
    type: count
    drill_fields: [post_name, categoria_principal_name]
  }
}
