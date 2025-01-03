# The name of this view in Looker is "Wise"
view: wise {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.wise` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Comprobante" in Explore.

  dimension: comprobante {
    type: number
    sql: ${TABLE}.comprobante ;;
  }

  dimension: datastream_metadata__source_timestamp {
    type: number
    sql: ${TABLE}.datastream_metadata.source_timestamp ;;
    group_label: "Datastream Metadata"
    group_item_label: "Source Timestamp"
  }

  dimension: datastream_metadata__uuid {
    type: string
    sql: ${TABLE}.datastream_metadata.uuid ;;
    group_label: "Datastream Metadata"
    group_item_label: "Uuid"
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: dia_envio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dia_envio ;;
  }

  dimension: dni {
    type: number
    sql: ${TABLE}.dni ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.firstName ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: id_caso {
    type: string
    sql: ${TABLE}.id_caso ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.lastName ;;
  }

  dimension: link {
    type: string
    sql: ${TABLE}.link ;;
  }

  dimension: phone {
    type: number
    sql: ${TABLE}.phone ;;
  }

  dimension_group: purchase {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.purchaseDate ;;
  }

  dimension: respuesta {
    type: string
    sql: ${TABLE}.respuesta ;;
  }

  dimension: sale_source {
    type: string
    sql: ${TABLE}.saleSource ;;
  }

  dimension: sent {
    type: number
    sql: ${TABLE}.sent ;;
  }

  dimension: store {
    type: string
    sql: ${TABLE}.store ;;
  }
  measure: count {
    type: count
    drill_fields: [last_name, first_name]
  }
}
