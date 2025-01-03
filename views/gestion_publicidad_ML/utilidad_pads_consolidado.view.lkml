# The name of this view in Looker is "Utilidad Pads Consolidado"
view: utilidad_pads_consolidado {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_publicidad_ML.utilidad_pads_consolidado` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "ID" in Explore.

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: listing_type {
    type: string
    sql: ${TABLE}.listing_type ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}.price ;;
  }

  dimension: root_sku {
    type: string
    sql: ${TABLE}.ROOT_SKU ;;
  }

  dimension: utilidad_api {
    type: number
    sql: ${TABLE}.utilidad_api ;;
  }
  measure: count {
    type: count
  }
}
