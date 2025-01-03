# The name of this view in Looker is "Comandas Por Sociedad"
view: comandas_por_sociedad {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_admin.comandas_por_sociedad` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "ID Comprobante" in Explore.

  dimension: id_comprobante {
    type: string
    sql: ${TABLE}.idComprobante ;;
  }

  dimension: sociedad {
    type: string
    sql: ${TABLE}.sociedad ;;
  }
  measure: count {
    type: count
  }
}
