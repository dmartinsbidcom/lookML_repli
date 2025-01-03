# The name of this view in Looker is "Temp Nuevos Precios"
view: temp_nuevos_precios {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.temp_nuevos_precios` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Descuento Adicional Bidcom" in Explore.

  dimension: descuento_adicional_bidcom {
    type: string
    sql: ${TABLE}.descuento_adicional_bidcom ;;
  }

  dimension: descuento_adicional_dod {
    type: string
    sql: ${TABLE}.descuento_adicional_dod ;;
  }

  dimension: dod_forzado {
    type: string
    sql: ${TABLE}.dod_forzado ;;
  }

  dimension: dxi_forzado {
    type: string
    sql: ${TABLE}.dxi_forzado ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_hora_cambio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_hora_cambio ;;
  }

  dimension: link_publicacion {
    type: string
    sql: ${TABLE}.link_publicacion ;;
  }

  dimension: mla {
    type: string
    sql: ${TABLE}.mla ;;
  }

  dimension: nuevo_precio {
    type: string
    sql: ${TABLE}.nuevo_precio ;;
  }

  dimension: nunca_impacto {
    type: number
    sql: ${TABLE}.nunca_impacto ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  measure: count {
    type: count
  }
}
