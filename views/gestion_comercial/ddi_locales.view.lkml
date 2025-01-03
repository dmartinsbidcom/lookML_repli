# The name of this view in Looker is "Ddi Locales"
view: ddi_locales {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.DDI_locales` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo Producto" in Explore.

  dimension: codigo_producto {
    type: string
    sql: ${TABLE}.codigoProducto ;;
  }

  dimension: das_que_durar_el_stock_actual_en_caldas {
    type: number
    sql: ${TABLE}.`Días que durará el Stock Actual en Caldas` ;;
  }

  dimension: monto {
    type: number
    sql: ${TABLE}.Monto ;;
  }

  dimension: stock_caldas {
    type: number
    sql: ${TABLE}.`Stock Caldas` ;;
  }

  dimension: unidades {
    type: number
    sql: ${TABLE}.unidades ;;
  }
  measure: count {
    type: count
  }
}
