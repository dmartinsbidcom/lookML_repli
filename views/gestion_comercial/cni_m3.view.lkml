# The name of this view in Looker is "Cni M3"
view: cni_m3 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.cni_m3` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Alto Cm" in Explore.

  dimension: alto_cm {
    type: string
    sql: ${TABLE}.Alto_Cm ;;
  }

  dimension: ancho_cm {
    type: string
    sql: ${TABLE}.Ancho_Cm ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}.Codigo ;;
  }

  dimension: costo_unitario_sin_iva {
    type: string
    sql: ${TABLE}.`Costo Unitario Sin IVA` ;;
  }

  dimension: largo_cm {
    type: string
    sql: ${TABLE}.Largo_Cm ;;
  }

  dimension: peso_especifico_unitario {
    type: string
    sql: ${TABLE}.`Peso Especifico Unitario` ;;
  }

  dimension: unidades_en_bulto {
    type: string
    sql: ${TABLE}.`Unidades en Bulto` ;;
  }
  measure: count {
    type: count
  }
}
