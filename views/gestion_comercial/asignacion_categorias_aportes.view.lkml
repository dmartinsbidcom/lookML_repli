# The name of this view in Looker is "Asignacion Categorias Aportes"
view: asignacion_categorias_aportes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.asignacion_categorias_aportes` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Categoria Corta" in Explore.

  dimension: categoria_corta {
    type: string
    sql: ${TABLE}.categoria_corta ;;
  }

  dimension: categoria_ml {
    type: string
    sql: ${TABLE}.categoria_ml ;;
  }
  measure: count {
    type: count
  }
}
