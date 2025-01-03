# The name of this view in Looker is "Utilidad Rentabilidad Gnl"
view: utilidad_rentabilidad_gnl {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.utilidad_rentabilidad_gnl` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " Ml Clasica Ult Comp" in Explore.

  dimension: _ml_clasica_ult_comp {
    type: string
    sql: ${TABLE}.`% ML Clasica- Ult Comp` ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}.Codigo ;;
  }

  dimension: gcia_ml_clasica__ult_comp {
    type: string
    sql: ${TABLE}.`Gcia ML Clasica - Ult Comp` ;;
  }
  measure: count {
    type: count
  }
}
