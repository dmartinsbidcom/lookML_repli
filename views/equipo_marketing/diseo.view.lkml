# The name of this view in Looker is "Diseo"
view: diseo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `equipo_marketing.Diseño` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Concepto" in Explore.

  dimension: concepto {
    type: string
    sql: ${TABLE}.Concepto ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_de_pago {
    type: time
    description: "%d/%m/%E4Y"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_de_Pago ;;
  }

  dimension: monto____ {
    type: number
    sql: ${TABLE}.Monto____ ;;
  }

  dimension: monto__u_s_ {
    type: string
    sql: ${TABLE}.Monto__U_S_ ;;
  }

  dimension: observaciones {
    type: string
    sql: ${TABLE}.Observaciones ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.Razon_Social ;;
  }

  dimension: sector_solicitud {
    type: string
    sql: ${TABLE}.Sector_Solicitud ;;
  }

  dimension: tc {
    type: string
    sql: ${TABLE}.TC ;;
  }

  dimension: tipificacion {
    type: string
    sql: ${TABLE}.Tipificacion ;;
  }
  measure: count {
    type: count
  }
}
