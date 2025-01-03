# The name of this view in Looker is "Fichas Freelance Int"
view: fichas_freelance_int {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `equipo_marketing.Fichas_freelance_int` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo Aguila" in Explore.

  dimension: codigo_aguila {
    type: string
    sql: ${TABLE}.codigo_aguila ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
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

  dimension: medio {
    type: string
    sql: ${TABLE}.Medio ;;
  }
  measure: count {
    type: count
  }
}
