# The name of this view in Looker is "Proyectos"
view: proyectos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `equipo_marketing.PROYECTOS` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Asignado" in Explore.

  dimension: asignado {
    type: string
    sql: ${TABLE}.Asignado ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_creaci__n {
    type: time
    description: "%d/%m/%y"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_Creaci__n ;;
  }

  dimension: fecha_finalizaci__n {
    type: string
    sql: ${TABLE}.Fecha_Finalizaci__n ;;
  }

  dimension_group: fecha_l__mite {
    type: time
    description: "%d/%m/%y"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_L__mite ;;
  }

  dimension_group: last_modified {
    type: time
    description: "bq-datetime"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Last_Modified ;;
  }

  dimension: nombre_tarea {
    type: string
    sql: ${TABLE}.Nombre_Tarea ;;
  }

  dimension: prioridad {
    type: string
    sql: ${TABLE}.Prioridad ;;
  }

  dimension: unito_id {
    type: string
    sql: ${TABLE}.UnitoID ;;
  }
  measure: count {
    type: count
  }
}
