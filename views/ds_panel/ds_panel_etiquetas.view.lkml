# The name of this view in Looker is "Ds Panel Etiquetas"
view: ds_panel_etiquetas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.etiquetas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Archivos" in Explore.

  dimension: archivos {
    type: string
    sql: ${TABLE}.archivos ;;
  }

  dimension: creador {
    type: string
    sql: ${TABLE}.creador ;;
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

  dimension: estatus {
    type: number
    sql: ${TABLE}.estatus ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }

  dimension_group: fecha_finalizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_finalizacion ;;
  }

  dimension: finalizador {
    type: string
    sql: ${TABLE}.finalizador ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: informacion {
    type: string
    sql: ${TABLE}.informacion ;;
  }

  dimension: linea {
    type: string
    sql: ${TABLE}.linea ;;
  }

  dimension: link_sku {
    type: string
    sql: ${TABLE}.link_sku ;;
  }

  dimension: links {
    type: string
    sql: ${TABLE}.links ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: posesion {
    type: string
    sql: ${TABLE}.posesion ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: tipo_solicitud {
    type: string
    sql: ${TABLE}.tipo_solicitud ;;
  }
  measure: count {
    type: count
  }
}
