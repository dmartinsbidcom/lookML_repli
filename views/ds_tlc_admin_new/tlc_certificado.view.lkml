# The name of this view in Looker is "Tlc Certificado"
view: tlc_certificado {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_tlc_admin_new.tlc_certificado` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Alias Proveedor" in Explore.

  dimension: alias_proveedor {
    type: string
    sql: ${TABLE}.alias_proveedor ;;
  }

  dimension: categorizacion_id {
    type: number
    sql: ${TABLE}.categorizacion_id ;;
  }

  dimension: certificado_de {
    type: string
    sql: ${TABLE}.certificado_de ;;
  }

  dimension: clase_id {
    type: number
    sql: ${TABLE}.clase_id ;;
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

  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: direccion {
    type: string
    sql: ${TABLE}.direccion ;;
  }

  dimension: es_sdu {
    type: number
    sql: ${TABLE}.es_sdu ;;
  }

  dimension: esta_en_ensayo {
    type: number
    sql: ${TABLE}.esta_en_ensayo ;;
  }

  dimension: fabrica {
    type: string
    sql: ${TABLE}.fabrica ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_emision {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_emision ;;
  }

  dimension_group: fecha_vencimiento {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_vencimiento ;;
  }

  dimension: gestor {
    type: string
    sql: ${TABLE}.gestor ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: inicio_renovacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.inicio_renovacion ;;
  }

  dimension: intervencion_id {
    type: number
    sql: ${TABLE}.intervencion_id ;;
  }

  dimension: laboratorio {
    type: string
    sql: ${TABLE}.laboratorio ;;
  }

  dimension: link_documentacion {
    type: string
    sql: ${TABLE}.link_documentacion ;;
  }

  dimension: numero_de_certificado {
    type: string
    sql: ${TABLE}.numero_de_certificado ;;
  }

  dimension: numero_expediente {
    type: string
    sql: ${TABLE}.numero_expediente ;;
  }

  dimension: organismo_de_certificacion {
    type: string
    sql: ${TABLE}.organismo_de_certificacion ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }
  measure: count {
    type: count
  }
}
