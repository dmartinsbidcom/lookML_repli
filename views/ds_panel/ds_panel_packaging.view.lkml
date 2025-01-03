# The name of this view in Looker is "Ds Panel Packaging"
view: ds_panel_packaging {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.packaging` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Analista Category" in Explore.

  dimension: analista_category {
    type: string
    sql: ${TABLE}.analista_category ;;
  }

  dimension: archivos {
    type: string
    sql: ${TABLE}.archivos ;;
  }

  dimension: caracteristicas {
    type: string
    sql: ${TABLE}.caracteristicas ;;
  }

  dimension: categorizacion {
    type: string
    sql: ${TABLE}.categorizacion ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: creador {
    type: string
    sql: ${TABLE}.creador ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
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

  dimension: ean {
    type: string
    sql: ${TABLE}.ean ;;
  }

  dimension: estado {
    type: number
    sql: ${TABLE}.estado ;;
  }

  dimension: estatus {
    type: string
    sql: ${TABLE}.estatus ;;
  }

  dimension: finalizador {
    type: string
    sql: ${TABLE}.finalizador ;;
  }

  dimension_group: finished {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.finished_at ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: linea {
    type: string
    sql: ${TABLE}.linea ;;
  }

  dimension: link {
    type: string
    sql: ${TABLE}.link ;;
  }

  dimension: link_manual {
    type: string
    sql: ${TABLE}.link_manual ;;
  }

  dimension: link_sku {
    type: string
    sql: ${TABLE}.link_sku ;;
  }

  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: posesion {
    type: string
    sql: ${TABLE}.posesion ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: tipo_packaging {
    type: string
    sql: ${TABLE}.tipo_packaging ;;
  }

  dimension: tipo_solicitud {
    type: string
    sql: ${TABLE}.tipo_solicitud ;;
  }

  dimension: titulo {
    type: string
    sql: ${TABLE}.titulo ;;
  }

  dimension: ubicacion_logo {
    type: string
    sql: ${TABLE}.ubicacion_logo ;;
  }

  dimension: urls {
    type: string
    sql: ${TABLE}.urls ;;
  }
  measure: count {
    type: count
  }
}
