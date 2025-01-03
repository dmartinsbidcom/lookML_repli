# The name of this view in Looker is "Verticales Mercadolibre"
view: verticales_mercadolibre {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.verticales_mercadolibre` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "L1 ID" in Explore.

  dimension: l1_id {
    type: string
    sql: ${TABLE}.l1_id ;;
  }

  dimension: l1_nombre {
    type: string
    sql: ${TABLE}.l1_nombre ;;
  }

  dimension: l2_id {
    type: string
    sql: ${TABLE}.l2_id ;;
  }

  dimension: l2_nombre {
    type: string
    sql: ${TABLE}.l2_nombre ;;
  }

  dimension: l3_id {
    type: string
    sql: ${TABLE}.l3_id ;;
  }

  dimension: l3_nombre {
    type: string
    sql: ${TABLE}.l3_nombre ;;
  }

  dimension: vertical {
    type: string
    sql: ${TABLE}.vertical ;;
  }
  measure: count {
    type: count
  }
}
