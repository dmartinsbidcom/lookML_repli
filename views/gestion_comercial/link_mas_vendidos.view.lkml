# The name of this view in Looker is "Link Mas Vendidos"
view: link_mas_vendidos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.link_mas_vendidos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Category ID" in Explore.

  dimension: category_id {
    type: string
    sql: ${TABLE}.`Category ID` ;;
  }

  dimension: link_de_categoria {
    type: string
    sql: ${TABLE}.`Link de Categoria` ;;
  }

  dimension: link_mas_vendidos {
    type: string
    sql: ${TABLE}.`link mas Vendidos` ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }
  measure: count {
    type: count
  }
}
