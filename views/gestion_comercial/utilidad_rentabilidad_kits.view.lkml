# The name of this view in Looker is "Utilidad Rentabilidad Kits"
view: utilidad_rentabilidad_kits {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.utilidad_rentabilidad_kits` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo Aguila" in Explore.

  dimension: codigo_aguila {
    type: string
    sql: ${TABLE}.codigo_aguila ;;
  }

  dimension: utilidad_meli_pos_tiigg {
    type: string
    sql: ${TABLE}.`Utilidad Meli PosT-IIGG` ;;
  }
  measure: count {
    type: count
  }
}
