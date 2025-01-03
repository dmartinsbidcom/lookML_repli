# The name of this view in Looker is "Rrss"
view: rrss {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `equipo_marketing.RRSS` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Encargado" in Explore.

  dimension: encargado {
    type: string
    sql: ${TABLE}.ENCARGADO ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_posteo {
    type: time
    description: "%d/%m/%E4Y"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_posteo ;;
  }

  dimension: realizado {
    type: string
    sql: ${TABLE}.REALIZADO ;;
  }

  dimension: tipo_de_contenido {
    type: string
    sql: ${TABLE}.Tipo_de_contenido ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }
  measure: count {
    type: count
  }
}
