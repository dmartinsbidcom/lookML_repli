# The name of this view in Looker is "Suscriptor"
view: suscriptor {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_newhome.suscriptor` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Apellido" in Explore.

  dimension: apellido {
    type: string
    sql: ${TABLE}.apellido ;;
  }

  dimension: asunto {
    type: string
    sql: ${TABLE}.asunto ;;
  }

  dimension: cargado {
    type: number
    sql: ${TABLE}.cargado ;;
  }

  dimension: categoria {
    type: number
    sql: ${TABLE}.categoria ;;
  }

  dimension: ciudad {
    type: string
    sql: ${TABLE}.ciudad ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: sitio {
    type: string
    sql: ${TABLE}.sitio ;;
  }
  measure: count {
    type: count
  }
}
