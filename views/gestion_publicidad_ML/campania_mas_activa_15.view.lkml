# The name of this view in Looker is "Campania Mas Activa 15"
view: campania_mas_activa_15 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_publicidad_ML.campania_mas_activa_15` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Campaa Rankeada" in Explore.

  dimension: campaa_rankeada {
    type: string
    sql: ${TABLE}.`campaña_rankeada` ;;
  }

  dimension: estado_rankeado {
    type: string
    sql: ${TABLE}.estado_rankeado ;;
  }

  dimension: nmero_de_publicacin {
    type: string
    sql: ${TABLE}.`Número_de_publicación` ;;
  }
  measure: count {
    type: count
  }
}
