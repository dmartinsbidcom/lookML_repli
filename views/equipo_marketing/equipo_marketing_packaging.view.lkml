# The name of this view in Looker is "Equipo Marketing Packaging"
view: equipo_marketing_packaging {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `equipo_marketing.PACKAGING` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "String Field 0" in Explore.

  dimension: string_field_0 {
    type: string
    sql: ${TABLE}.string_field_0 ;;
  }

  dimension: string_field_1 {
    type: string
    sql: ${TABLE}.string_field_1 ;;
  }

  dimension: string_field_2 {
    type: string
    sql: ${TABLE}.string_field_2 ;;
  }

  dimension: string_field_3 {
    type: string
    sql: ${TABLE}.string_field_3 ;;
  }

  dimension: string_field_4 {
    type: string
    sql: ${TABLE}.string_field_4 ;;
  }

  dimension: string_field_5 {
    type: string
    sql: ${TABLE}.string_field_5 ;;
  }

  dimension: string_field_6 {
    type: string
    sql: ${TABLE}.string_field_6 ;;
  }

  dimension: string_field_7 {
    type: string
    sql: ${TABLE}.string_field_7 ;;
  }
  measure: count {
    type: count
  }
}
