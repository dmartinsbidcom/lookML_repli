# The name of this view in Looker is "Activaciones Preventa Web"
view: activaciones_preventa_web {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `activaciones_preventa.web` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo" in Explore.

  dimension: codigo {
    type: string
    sql: ${TABLE}.Codigo ;;
  }

  dimension: ddi {
    type: number
    sql: ${TABLE}.ddi ;;
  }

  dimension: ddi_nacionalizado {
    type: number
    sql: ${TABLE}.ddi_nacionalizado ;;
  }

  dimension: dias_ezflp {
    type: number
    sql: ${TABLE}.dias_ezflp ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_entrega {
    type: time
    description: "%d/%m/%E4Y"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_entrega ;;
  }

  dimension: medio_activacion {
    type: string
    sql: ${TABLE}.medio_activacion ;;
  }

  dimension: numero_de_despacho {
    type: string
    sql: ${TABLE}.Numero_de_Despacho ;;
  }

  dimension: renta_web {
    type: number
    sql: ${TABLE}.renta_web ;;
  }

  dimension: sku_clean {
    type: string
    sql: ${TABLE}.sku_clean ;;
  }

  dimension: sum_cantidad_informar {
    type: number
    sql: ${TABLE}.sum_cantidad_informar ;;
  }
  measure: count {
    type: count
  }
}
