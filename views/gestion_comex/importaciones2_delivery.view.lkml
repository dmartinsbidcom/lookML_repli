# The name of this view in Looker is "Importaciones2 Delivery"
view: importaciones2_delivery {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comex.Importaciones2_delivery` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_de_arribo_a_aduana {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Fecha de arribo a Aduana` ;;
  }

  dimension_group: fecha_de_salida_de_origen {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Fecha de Salida de Origen` ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "ID Stock Origen" in Explore.

  dimension: id_stock_origen {
    type: string
    sql: ${TABLE}.`ID Stock Origen` ;;
  }

  dimension: localizacion {
    type: string
    sql: ${TABLE}.Localizacion ;;
  }

  dimension: n_fcl {
    type: string
    sql: ${TABLE}.N_FCL ;;
  }
  measure: count {
    type: count
  }
}
