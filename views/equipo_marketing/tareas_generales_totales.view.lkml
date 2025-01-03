# The name of this view in Looker is "Tareas Generales Totales"
view: tareas_generales_totales {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `equipo_marketing.TareasGeneralesTotales` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cambios Generales" in Explore.

  dimension: cambios_generales {
    type: string
    sql: ${TABLE}.Cambios_Generales ;;
  }

  dimension: cambios_hechos {
    type: string
    sql: ${TABLE}.Cambios_Hechos ;;
  }

  dimension: etiquetas_generals {
    type: string
    sql: ${TABLE}.Etiquetas_Generals ;;
  }

  dimension: etiquetas_hechos {
    type: string
    sql: ${TABLE}.Etiquetas_Hechos ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_creacion {
    type: time
    description: "%d/%m/%E4Y"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_creacion ;;
  }

  dimension: fichas_generales_ {
    type: number
    sql: ${TABLE}.Fichas_Generales_ ;;
  }

  dimension: fichas_hechas {
    type: number
    sql: ${TABLE}.Fichas_Hechas ;;
  }

  dimension: fichas_objetivos {
    type: number
    sql: ${TABLE}.Fichas_Objetivos ;;
  }

  dimension: manual_generales {
    type: string
    sql: ${TABLE}.Manual_Generales ;;
  }

  dimension: manual_hechos {
    type: string
    sql: ${TABLE}.Manual_Hechos ;;
  }

  dimension: packaging_generales {
    type: string
    sql: ${TABLE}.Packaging_Generales ;;
  }

  dimension: packaging_hechos {
    type: string
    sql: ${TABLE}.Packaging_Hechos ;;
  }

  dimension: rrss_generales {
    type: string
    sql: ${TABLE}.RRSS_Generales ;;
  }

  dimension: rrss_hechos {
    type: string
    sql: ${TABLE}.RRSS_Hechos ;;
  }

  dimension: tarea {
    type: string
    sql: ${TABLE}.Tarea ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }

  dimension: web_generales {
    type: string
    sql: ${TABLE}.WEB_Generales ;;
  }

  dimension: web_hechos {
    type: string
    sql: ${TABLE}.WEB_Hechos ;;
  }
  measure: count {
    type: count
  }
}
