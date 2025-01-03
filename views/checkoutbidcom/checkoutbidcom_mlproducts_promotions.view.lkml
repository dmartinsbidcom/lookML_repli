# The name of this view in Looker is "Checkoutbidcom Mlproducts Promotions"
view: checkoutbidcom_mlproducts_promotions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `checkoutbidcom.MLProducts_promotions` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Meli Percent" in Explore.

  dimension: meli_percent {
    type: number
    sql: ${TABLE}.meli_percent ;;
  }

  dimension: mla {
    type: string
    sql: ${TABLE}.mla ;;
  }

  dimension: new_price {
    type: number
    sql: ${TABLE}.new_price ;;
  }

  dimension: original_price {
    type: number
    sql: ${TABLE}.original_price ;;
  }

  dimension: seller_percent {
    type: number
    sql: ${TABLE}.seller_percent ;;
  }
  measure: count {
    type: count
  }
}
