# The name of this view in Looker is "Fechas Produccion"
view: fechas_produccion {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Supply_Chain.fechas_produccion` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_dada_por_proveedor {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Fecha dada por proveedor` ;;
  }

  dimension_group: fecha_instruccion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Fecha Instruccion` ;;
  }

  dimension_group: fecha_qc {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Fecha QC` ;;
  }

  dimension_group: fecha_rework {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Fecha Rework` ;;
  }

  dimension_group: fin_produccion_comex {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`FIN PRODUCCION COMEX` ;;
  }

  dimension_group: fin_produccion_estimada {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Fin Produccion Estimada` ;;
  }

  dimension_group: fin_produccion_estimada_2 {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Fin produccion estimada 2` ;;
  }

  dimension_group: fin_produccion_real {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Fin Produccion Real` ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "So" in Explore.

  dimension: so {
    type: string
    sql: ${TABLE}.SO ;;
  }
  measure: count {
    type: count
  }
}
