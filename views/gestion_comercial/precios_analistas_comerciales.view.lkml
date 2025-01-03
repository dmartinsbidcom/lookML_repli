# The name of this view in Looker is "Precios Analistas Comerciales"
view: precios_analistas_comerciales {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.precios_analistas_comerciales` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo" in Explore.

  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_ultima_modificacion_precio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_ultima_modificacion_precio ;;
  }

  dimension: nuevo_precio {
    type: string
    sql: ${TABLE}.`Nuevo Precio` ;;
  }

  dimension: precio_actual {
    type: string
    sql: ${TABLE}.precio_actual ;;
  }

  dimension: precio_anterior {
    type: string
    sql: ${TABLE}.precio_anterior ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }
  measure: count {
    type: count
  }
}
