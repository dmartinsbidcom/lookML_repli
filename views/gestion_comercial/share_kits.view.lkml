# The name of this view in Looker is "Share Kits"
view: share_kits {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.share_kits` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cantidad" in Explore.

  dimension: cantidad {
    type: number
    sql: ${TABLE}.Cantidad ;;
  }

  dimension: kit {
    type: string
    sql: ${TABLE}.Kit ;;
  }

  dimension: monto_producto_individual {
    type: number
    sql: ${TABLE}.monto_producto_individual ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: share_producto {
    type: number
    sql: ${TABLE}.share_producto ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.Tipo ;;
  }
  measure: count {
    type: count
  }
}
