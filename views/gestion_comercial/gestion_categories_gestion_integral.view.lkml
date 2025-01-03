# The name of this view in Looker is "Gestion Categories Gestion Integral"
view: gestion_categories_gestion_integral {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.gestion_categories_gestion_integral` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Categora" in Explore.

  dimension: categora {
    type: string
    sql: ${TABLE}.`Categoría` ;;
  }

  dimension: categora_asignacin {
    type: string
    sql: ${TABLE}.`Categoría Asignación` ;;
  }

  dimension: category_asignacin {
    type: string
    sql: ${TABLE}.`Category Asignación` ;;
  }

  dimension: costo_sin_iva {
    type: string
    sql: ${TABLE}.`Costo Sin IVA` ;;
  }

  dimension: precio_mla_vinculado {
    type: string
    sql: ${TABLE}.`Precio MLA Vinculado` ;;
  }

  dimension: ranking_unificado_costo_facturacin_y_ganancia {
    type: string
    sql: ${TABLE}.`Ranking Unificado Costo Facturación y Ganancia` ;;
  }

  dimension: rentabilidad_unitaria_actual {
    type: string
    sql: ${TABLE}.`Rentabilidad Unitaria Actual` ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  dimension: utilidad_unitaria_actual {
    type: string
    sql: ${TABLE}.`Utilidad Unitaria Actual` ;;
  }
  measure: count {
    type: count
  }
}
