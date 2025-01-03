# The name of this view in Looker is "Historial Cambios Precios Ofertas Corriendo"
view: historial_cambios_precios_ofertas_corriendo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.historial_cambios_precios_ofertas_corriendo` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cambio Precio" in Explore.

  dimension: cambio_precio {
    type: number
    sql: ${TABLE}.cambio_precio ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_hora_cambio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_hora_cambio ;;
  }

  dimension: mla {
    type: string
    sql: ${TABLE}.mla ;;
  }
  measure: count {
    type: count
  }
}
