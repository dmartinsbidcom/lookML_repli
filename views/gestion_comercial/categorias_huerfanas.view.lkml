# The name of this view in Looker is "Categorias Huerfanas"
view: categorias_huerfanas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.categorias_huerfanas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Categora Mercado Libre" in Explore.

  dimension: categora_mercado_libre {
    type: string
    sql: ${TABLE}.`Categoría MercadoLibre` ;;
  }
  measure: count {
    type: count
  }
}
