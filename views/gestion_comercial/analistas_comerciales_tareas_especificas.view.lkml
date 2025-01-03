# The name of this view in Looker is "Analistas Comerciales Tareas Especificas"
view: analistas_comerciales_tareas_especificas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.analistas_comerciales_tareas_especificas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cdigo A Modificar De Precio" in Explore.

  dimension: cdigo_a_modificar_de_precio {
    type: string
    sql: ${TABLE}.`Código a Modificar de Precio` ;;
  }

  dimension: fecha_de_inicio {
    type: string
    sql: ${TABLE}.`Fecha de inicio` ;;
  }

  dimension: ltima_modificacin_de_precio {
    type: string
    sql: ${TABLE}.`Última modificación de Precio` ;;
  }

  dimension: nuevo_precio {
    type: string
    sql: ${TABLE}.`Nuevo Precio` ;;
  }

  dimension: row_num {
    type: number
    sql: ${TABLE}.row_num ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }
  measure: count {
    type: count
  }
}
