# The name of this view in Looker is "Mlas Trabajar"
view: mlas_trabajar {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.mlas_trabajar` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Categorizacin Resumida" in Explore.

  dimension: categorizacin_resumida {
    type: string
    sql: ${TABLE}.`Categorización Resumida` ;;
  }

  dimension: codigo_aguila {
    type: string
    sql: ${TABLE}.codigo_aguila ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: responsable_de_categoria {
    type: string
    sql: ${TABLE}.`Responsable de Categoria` ;;
  }
  measure: count {
    type: count
  }
}
