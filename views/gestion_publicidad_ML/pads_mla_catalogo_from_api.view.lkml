# The name of this view in Looker is "Pads Mla Catalogo From API"
view: pads_mla_catalogo_from_api {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_publicidad_ML.pads_mla_catalogo_from_api` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Catalogo" in Explore.

  dimension: catalogo {
    type: string
    sql: ${TABLE}.catalogo ;;
  }

  dimension: cuenta {
    type: string
    sql: ${TABLE}.cuenta ;;
  }

  dimension: estado_catalogo {
    type: string
    sql: ${TABLE}.estado_catalogo ;;
  }

  dimension: mla {
    type: string
    sql: ${TABLE}.mla ;;
  }
  measure: count {
    type: count
  }
}
