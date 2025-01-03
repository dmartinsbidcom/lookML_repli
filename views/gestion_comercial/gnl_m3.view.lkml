# The name of this view in Looker is "Gnl M3"
view: gnl_m3 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.gnl_m3` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo" in Explore.

  dimension: codigo {
    type: string
    sql: ${TABLE}.Codigo ;;
  }

  dimension: costo_reposicion_pesos_sin_iva {
    type: string
    sql: ${TABLE}.Costo_Reposicion_Pesos_Sin_IVA ;;
  }

  dimension: lado_1_cm {
    type: string
    sql: ${TABLE}.Lado_1_Cm ;;
  }

  dimension: lado_2_cm {
    type: string
    sql: ${TABLE}.Lado_2_Cm ;;
  }

  dimension: lado_3_cm {
    type: string
    sql: ${TABLE}.Lado_3_Cm ;;
  }

  dimension: peso_kg {
    type: string
    sql: ${TABLE}.Peso_Kg ;;
  }
  measure: count {
    type: count
  }
}
