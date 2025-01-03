# The name of this view in Looker is "Operaciones Mayoristas Contabilizadas"
view: operaciones_mayoristas_contabilizadas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.operaciones_mayoristas_contabilizadas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Numero Comanda" in Explore.

  dimension: numero_comanda {
    type: string
    sql: ${TABLE}.`Numero Comanda` ;;
  }

  dimension: status_pagos {
    type: string
    sql: ${TABLE}.`Status Pagos` ;;
  }
  measure: count {
    type: count
  }
}
