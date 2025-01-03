# The name of this view in Looker is "Asignacion Catg Resumida"
view: asignacion_catg_resumida {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.asignacion_catg_resumida` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Categoria Resumida" in Explore.

  dimension: categoria_resumida {
    type: string
    sql: ${TABLE}.`categoria resumida` ;;
  }

  dimension: category_path {
    type: string
    sql: ${TABLE}.category_path ;;
  }
  measure: count {
    type: count
  }
}
