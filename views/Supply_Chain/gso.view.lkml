# The name of this view in Looker is "Gso"
view: gso {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Supply_Chain.GSO` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cantidad" in Explore.

  dimension: cantidad {
    type: string
    sql: ${TABLE}.Cantidad ;;
  }

  dimension: cantidad_bidcom_uy {
    type: string
    sql: ${TABLE}.`Cantidad Bidcom UY` ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}.Codigo ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: eta {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ETA ;;
  }

  dimension_group: etd {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ETD ;;
  }

  dimension_group: fecha_invoice {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Fecha Invoice` ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: invoice {
    type: string
    sql: ${TABLE}.Invoice ;;
  }

  dimension: proveedor {
    type: string
    sql: ${TABLE}.Proveedor ;;
  }

  dimension: repuestos {
    type: string
    sql: ${TABLE}.Repuestos ;;
  }
  measure: count {
    type: count
  }
}
