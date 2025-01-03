# The name of this view in Looker is "Borepuestospendientes"
view: borepuestospendientes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2operativo.borepuestospendientes` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Datastream Metadata Source Timestamp" in Explore.

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

  dimension: descripcionborepuestopendiente {
    type: string
    sql: ${TABLE}.descripcionborepuestopendiente ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fechahoraborepuestopendiente {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechahoraborepuestopendiente ;;
  }

  dimension: idboreparacion {
    type: number
    sql: ${TABLE}.idboreparacion ;;
  }

  dimension: idborepuestopendiente {
    type: number
    sql: ${TABLE}.idborepuestopendiente ;;
  }

  dimension: idusuario {
    type: number
    sql: ${TABLE}.idusuario ;;
  }
  measure: count {
    type: count
  }
}