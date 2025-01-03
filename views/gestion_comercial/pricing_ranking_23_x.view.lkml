# The name of this view in Looker is "Pricing Ranking 23 X"
view: pricing_ranking_23_x {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.pricing_ranking_23_x` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cantidad Mayorista" in Explore.

  dimension: cantidad_mayorista {
    type: number
    sql: ${TABLE}.cantidadMayorista ;;
  }

  dimension: cantidad_mktp {
    type: number
    sql: ${TABLE}.cantidadMktp ;;
  }

  dimension: cantidad_off {
    type: number
    sql: ${TABLE}.cantidadOff ;;
  }

  dimension: cantidad_total_23 {
    type: number
    sql: ${TABLE}.cantidad_total_23 ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.Categoria ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
  }

  dimension: ddi {
    type: number
    sql: ${TABLE}.DDI ;;
  }

  dimension: dispersion_estimacion {
    type: number
    sql: ${TABLE}.dispersion_estimacion ;;
  }

  dimension: ezflp {
    type: number
    sql: ${TABLE}.EZFLP ;;
  }

  dimension: link_mas_vendido {
    type: string
    sql: ${TABLE}.link_mas_vendido ;;
  }

  dimension: meli_cantidad {
    type: number
    sql: ${TABLE}.meliCantidad ;;
  }

  dimension: meli_monto {
    type: number
    sql: ${TABLE}.meliMonto ;;
  }

  dimension: monto_mayorista {
    type: number
    sql: ${TABLE}.montoMayorista ;;
  }

  dimension: monto_mktp {
    type: number
    sql: ${TABLE}.montoMktp ;;
  }

  dimension: monto_off {
    type: number
    sql: ${TABLE}.montoOff ;;
  }

  dimension: monto_total_23 {
    type: number
    sql: ${TABLE}.monto_total_23 ;;
  }

  dimension: pagina_monto {
    type: number
    sql: ${TABLE}.paginaMonto ;;
  }

  dimension: pagina_si {
    type: number
    sql: ${TABLE}.paginaSI ;;
  }

  dimension: ranking {
    type: number
    sql: ${TABLE}.ranking ;;
  }

  dimension: rent_inversion {
    type: string
    sql: ${TABLE}.rent_inversion ;;
  }

  dimension: rentabilidad_pvp {
    type: number
    sql: ${TABLE}.rentabilidad_pvp ;;
  }

  dimension: share_mayorista {
    type: number
    sql: ${TABLE}.shareMayorista ;;
  }

  dimension: share_meli {
    type: number
    sql: ${TABLE}.shareMeli ;;
  }

  dimension: share_mktp {
    type: number
    sql: ${TABLE}.shareMktp ;;
  }

  dimension: share_off {
    type: number
    sql: ${TABLE}.shareOff ;;
  }

  dimension: share_pagina {
    type: number
    sql: ${TABLE}.sharePagina ;;
  }

  dimension: snck {
    type: number
    sql: ${TABLE}.SNCK ;;
  }

  dimension: stock_full {
    type: number
    sql: ${TABLE}.StockFull ;;
  }

  dimension: stock_origen {
    type: number
    sql: ${TABLE}.stock_origen ;;
  }

  dimension: stock_viajando {
    type: number
    sql: ${TABLE}.stock_viajando ;;
  }

  dimension: utilidad_periodo {
    type: number
    sql: ${TABLE}.utilidad_periodo ;;
  }

  dimension: utilidad_unitaria {
    type: string
    sql: ${TABLE}.utilidad_unitaria ;;
  }

  dimension: zflp {
    type: number
    sql: ${TABLE}.ZFLP ;;
  }
  measure: count {
    type: count
  }
}
