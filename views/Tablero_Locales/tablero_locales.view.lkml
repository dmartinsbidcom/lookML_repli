# The name of this view in Looker is "Tablero Locales"
view: tablero_locales {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Tablero_Locales.Tablero_Locales` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cantidad" in Explore.

  dimension: cantidad {
    type: string
    sql: ${TABLE}.Cantidad ;;
  }

  dimension: categorie {
    type: string
    sql: ${TABLE}.Categorie ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}.Codigo ;;
  }

  dimension: demora_1 {
    type: string
    sql: ${TABLE}.`Demora 1` ;;
  }

  dimension: demora_2 {
    type: string
    sql: ${TABLE}.`Demora 2` ;;
  }

  dimension: demora_3 {
    type: string
    sql: ${TABLE}.`Demora 3` ;;
  }

  dimension: demora_4 {
    type: string
    sql: ${TABLE}.`Demora 4` ;;
  }

  dimension: demora_5 {
    type: string
    sql: ${TABLE}.`Demora 5` ;;
  }

  dimension: demora_6 {
    type: string
    sql: ${TABLE}.`Demora 6` ;;
  }

  dimension: demora_7 {
    type: string
    sql: ${TABLE}.`Demora 7` ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha ;;
  }

  dimension: fecha_analisis_del_negocio {
    type: string
    sql: ${TABLE}.`Fecha Analisis del Negocio` ;;
  }

  dimension: fecha_aprobacion_negocio {
    type: string
    sql: ${TABLE}.`Fecha Aprobacion Negocio` ;;
  }

  dimension: fecha_creacion_ficha {
    type: string
    sql: ${TABLE}.`Fecha Creacion Ficha` ;;
  }

  dimension: fecha_de_ingreso_a_stock_estimada {
    type: string
    sql: ${TABLE}.`Fecha de Ingreso a Stock Estimada` ;;
  }

  dimension: fecha_de_ingreso_deposito {
    type: string
    sql: ${TABLE}.`Fecha de Ingreso Deposito` ;;
  }

  dimension: fecha_de_ingreso_mc {
    type: string
    sql: ${TABLE}.`Fecha de Ingreso MC` ;;
  }

  dimension: fecha_de_mail {
    type: string
    sql: ${TABLE}.`Fecha de Mail` ;;
  }

  dimension: fecha_de_pago_calculo_costo_financiero {
    type: string
    sql: ${TABLE}.`Fecha de Pago Calculo Costo Financiero` ;;
  }

  dimension: fecha_gestion_de_pagos {
    type: string
    sql: ${TABLE}.`Fecha Gestion de Pagos` ;;
  }

  dimension: fecha_gestion_pago {
    type: string
    sql: ${TABLE}.`FECHA GESTION PAGO` ;;
  }

  dimension: fecha_ingreso_stock {
    type: string
    sql: ${TABLE}.`Fecha Ingreso Stock` ;;
  }

  dimension: fecha_publicacion {
    type: string
    sql: ${TABLE}.`Fecha Publicacion` ;;
  }

  dimension: fecha_turnado {
    type: string
    sql: ${TABLE}.`Fecha Turnado` ;;
  }

  dimension: n_factura {
    type: string
    sql: ${TABLE}.`N Factura` ;;
  }

  dimension: orden {
    type: string
    sql: ${TABLE}.Orden ;;
  }

  dimension: orden__cod {
    type: string
    sql: ${TABLE}.`ORDEN + COD` ;;
  }

  dimension: orden__cod_x {
    type: string
    sql: ${TABLE}.`ORDEN + COD X` ;;
  }

  dimension: precio_unitario_sin_iva {
    type: string
    sql: ${TABLE}.`Precio unitario sin IVA` ;;
  }

  dimension: producto_x {
    type: string
    sql: ${TABLE}.ProductoX ;;
  }

  dimension: proveedor {
    type: string
    sql: ${TABLE}.Proveedor ;;
  }
  measure: count {
    type: count
  }
}
