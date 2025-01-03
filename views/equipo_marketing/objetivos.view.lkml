# The name of this view in Looker is "Objetivos"
view: objetivos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `equipo_marketing.OBJETIVOS` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " 1" in Explore.

  dimension: _1 {
    type: string
    sql: ${TABLE}._1 ;;
  }

  dimension: _2 {
    type: string
    sql: ${TABLE}._2 ;;
  }

  dimension: _3 {
    type: string
    sql: ${TABLE}._3 ;;
  }

  dimension: _4 {
    type: string
    sql: ${TABLE}._4 ;;
  }

  dimension: _5 {
    type: string
    sql: ${TABLE}._5 ;;
  }

  dimension: _6 {
    type: string
    sql: ${TABLE}._6 ;;
  }

  dimension: _7 {
    type: string
    sql: ${TABLE}._7 ;;
  }

  dimension: cambios_publicaciones {
    type: number
    sql: ${TABLE}.Cambios_Publicaciones ;;
  }

  dimension: etiquetas {
    type: number
    sql: ${TABLE}.Etiquetas ;;
  }

  dimension: ficha {
    type: number
    sql: ${TABLE}.Ficha ;;
  }

  dimension: manual {
    type: number
    sql: ${TABLE}.Manual ;;
  }

  dimension: mes_objetivo {
    type: string
    sql: ${TABLE}.mes_objetivo ;;
  }

  dimension: packaging {
    type: number
    sql: ${TABLE}.Packaging ;;
  }

  dimension: rrss {
    type: number
    sql: ${TABLE}.RRSS ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }

  dimension: web {
    type: number
    sql: ${TABLE}.WEB ;;
  }
  measure: count {
    type: count
  }
}
