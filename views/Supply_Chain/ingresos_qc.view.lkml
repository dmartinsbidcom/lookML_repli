# The name of this view in Looker is "Ingresos Qc"
view: ingresos_qc {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Supply_Chain.ingresos_qc` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "1 Number of Cartons" in Explore.

  dimension: 1__number_of_cartons {
    type: string
    sql: ${TABLE}.`1 - Number of cartons` ;;
  }

  dimension: giftbox_height_cm {
    type: string
    sql: ${TABLE}.Giftbox_Height_Cm ;;
  }

  dimension: giftbox_lenght_cm {
    type: string
    sql: ${TABLE}.Giftbox_Lenght_Cm ;;
  }

  dimension: giftbox_weight_g {
    type: string
    sql: ${TABLE}.Giftbox_Weight_g ;;
  }

  dimension: giftbox_width_cm {
    type: string
    sql: ${TABLE}.Giftbox_Width_Cm ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  dimension: so_number {
    type: string
    sql: ${TABLE}.`SO Number` ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: upload {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Upload Date` ;;
  }
  measure: count {
    type: count
  }
}
