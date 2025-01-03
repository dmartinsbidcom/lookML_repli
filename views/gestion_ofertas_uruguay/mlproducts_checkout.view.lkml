# The name of this view in Looker is "Mlproducts Checkout"
view: mlproducts_checkout {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_ofertas_uruguay.MLProducts_checkout` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Availability Quantity" in Explore.

  dimension: availability_quantity {
    type: number
    sql: ${TABLE}.availability_quantity ;;
  }

  dimension: catalog_listing {
    type: number
    sql: ${TABLE}.catalog_listing ;;
  }

  dimension: category_path {
    type: string
    sql: ${TABLE}.category_path ;;
  }

  dimension: codigo_aguila {
    type: string
    sql: ${TABLE}.codigo_aguila ;;
  }

  dimension: currency_id {
    type: string
    sql: ${TABLE}.currency_id ;;
  }

  dimension: envio_gratis {
    type: number
    sql: ${TABLE}.envio_gratis ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: local_pick_up {
    type: number
    sql: ${TABLE}.local_pick_up ;;
  }

  dimension: logistic_type {
    type: string
    sql: ${TABLE}.logistic_type ;;
  }

  dimension: original_price {
    type: number
    sql: ${TABLE}.original_price ;;
  }

  dimension: permalink {
    type: string
    sql: ${TABLE}.permalink ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: sold_quantity {
    type: number
    sql: ${TABLE}.sold_quantity ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
  measure: count {
    type: count
  }
}
