# The name of this view in Looker is "Ultima Marca Cargada"
view: ultima_marca_cargada {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_publicidad_ML.ultima_marca_cargada` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Marca" in Explore.

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: marca_bp {
    type: string
    sql: ${TABLE}.marca_bp ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  measure: count {
    type: count
  }
}
