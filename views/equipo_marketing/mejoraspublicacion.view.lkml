# The name of this view in Looker is "Mejoraspublicacion"
view: mejoraspublicacion {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `equipo_marketing.MEJORASPUBLICACION` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Catalogo Reemplazado" in Explore.

  dimension: catalogo_reemplazado {
    type: string
    sql: ${TABLE}.Catalogo_Reemplazado ;;
  }

  dimension: encargado {
    type: string
    sql: ${TABLE}.Encargado ;;
  }

  dimension: estados {
    type: string
    sql: ${TABLE}.estados ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_agregado {
    type: time
    description: "%d/%m/%E4Y"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_Agregado ;;
  }

  dimension_group: fecha_modificacion {
    type: time
    description: "%d/%m/%E4Y"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_Modificacion ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.Usuario ;;
  }
  measure: count {
    type: count
  }
}
