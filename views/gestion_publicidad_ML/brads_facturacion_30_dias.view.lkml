# The name of this view in Looker is "Brads Facturacion 30 Dias"
view: brads_facturacion_30_dias {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_publicidad_ML.brads_facturacion_30_dias` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Acos" in Explore.

  dimension: acos {
    type: number
    sql: ${TABLE}.ACOS ;;
  }

  dimension: acos_categoria_top10_mla {
    type: number
    sql: ${TABLE}.ACOS_Categoria_TOP10_MLA ;;
  }

  dimension: acos_categoria_total {
    type: number
    sql: ${TABLE}.ACOS_Categoria_total ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }

  dimension: cantidad_de_mlas {
    type: number
    sql: ${TABLE}.Cantidad_de_MLAS ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.Categoria ;;
  }

  dimension: category_id {
    type: string
    sql: ${TABLE}.category_id ;;
  }

  dimension: condicion_query {
    type: number
    sql: ${TABLE}.condicion_query ;;
  }

  dimension: ddi {
    type: number
    sql: ${TABLE}.DDI ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: indicador_unitario {
    type: string
    sql: ${TABLE}.indicador_unitario ;;
  }

  dimension: monto {
    type: number
    sql: ${TABLE}.monto ;;
  }

  dimension: ranking_dentro_de_la_categ {
    type: number
    sql: ${TABLE}.Ranking_dentro_de_la_Categ ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: tienda {
    type: string
    sql: ${TABLE}.Tienda ;;
  }
  measure: count {
    type: count
  }
}
