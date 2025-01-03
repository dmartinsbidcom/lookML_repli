# The name of this view in Looker is "Bd Comex Ezflp"
view: bd_comex_ezflp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comex.bd_comex_EZFLP` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cantidad" in Explore.

  dimension: cantidad {
    type: string
    sql: ${TABLE}.Cantidad ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}.Codigo ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_salida_aduana {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Fecha salida aduana` ;;
  }

  dimension: id_stock_origen {
    type: string
    sql: ${TABLE}.`ID Stock Origen` ;;
  }

  dimension: pais_de_destino {
    type: string
    sql: ${TABLE}.`Pais de Destino` ;;
  }
  measure: count {
    type: count
  }
}
