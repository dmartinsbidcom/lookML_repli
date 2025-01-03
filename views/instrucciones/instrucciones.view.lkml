# The name of this view in Looker is "Instrucciones"
view: instrucciones {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `instrucciones.instrucciones` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Alias" in Explore.

  dimension: alias {
    type: string
    sql: ${TABLE}.Alias ;;
  }

  dimension: artes {
    type: string
    sql: ${TABLE}.Artes ;;
  }

  dimension: cantidad_bultos {
    type: string
    sql: ${TABLE}.CantidadBultos ;;
  }

  dimension: cnofinal {
    type: string
    sql: ${TABLE}.CNOFinal ;;
  }

  dimension: cnoinicial {
    type: string
    sql: ${TABLE}.CNOInicial ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}.Codigo ;;
  }

  dimension: cont {
    type: string
    sql: ${TABLE}.Cont ;;
  }

  dimension: correo {
    type: string
    sql: ${TABLE}.Correo ;;
  }

  dimension: ean {
    type: string
    sql: ${TABLE}.Ean ;;
  }

  dimension: errores {
    type: string
    sql: ${TABLE}.Errores ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: invoice {
    type: string
    sql: ${TABLE}.Invoice ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.Marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.Modelo ;;
  }

  dimension: no_full {
    type: string
    sql: ${TABLE}.NoFull ;;
  }

  dimension: num_invoice {
    type: string
    sql: ${TABLE}.NumInvoice ;;
  }

  dimension: origen {
    type: string
    sql: ${TABLE}.Origen ;;
  }

  dimension: repuestos {
    type: string
    sql: ${TABLE}.Repuestos ;;
  }

  dimension: row {
    type: number
    sql: ${TABLE}.Row ;;
  }

  dimension: socarton_final {
    type: string
    sql: ${TABLE}.SOCartonFinal ;;
  }

  dimension: socarton_inicial {
    type: string
    sql: ${TABLE}.SOCartonInicial ;;
  }

  dimension: un_carton_mas {
    type: string
    sql: ${TABLE}.UnCartonMas ;;
  }

  dimension: unidades_calculadas {
    type: string
    sql: ${TABLE}.UnidadesCalculadas ;;
  }

  dimension: unidades_carton {
    type: string
    sql: ${TABLE}.UnidadesCarton ;;
  }

  dimension: units {
    type: string
    sql: ${TABLE}.Units ;;
  }

  dimension: validacion_repuestos {
    type: string
    sql: ${TABLE}.Validacion_repuestos ;;
  }

  dimension: validacionartes {
    type: string
    sql: ${TABLE}.VALIDACIONARTES ;;
  }

  dimension: void_desde {
    type: string
    sql: ${TABLE}.VoidDesde ;;
  }

  dimension: void_hasta {
    type: string
    sql: ${TABLE}.VoidHasta ;;
  }
  measure: count {
    type: count
  }
}
