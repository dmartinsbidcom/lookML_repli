# The name of this view in Looker is "Consolidado Costos"
view: consolidado_costos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `costos.consolidado_costos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Costo" in Explore.

  dimension: costo {
    type: number
    sql: ${TABLE}.costo ;;
  }

  dimension: ep {
    type: yesno
    sql: ${TABLE}.ep ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }

  dimension: iva {
    type: number
    sql: ${TABLE}.iva ;;
  }

  dimension: local {
    type: yesno
    sql: ${TABLE}.local ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  measure: count {
    type: count
  }
}
