# The name of this view in Looker is "Ds Checkoutbidcom Respuesta"
view: ds_checkoutbidcom_respuesta {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_checkoutbidcom.Respuesta` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Datastream Metadata Is Deleted" in Explore.

  dimension: datastream_metadata__is_deleted {
    type: yesno
    sql: ${TABLE}.datastream_metadata.is_deleted ;;
    group_label: "Datastream Metadata"
    group_item_label: "Is Deleted"
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

  dimension_group: fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Fecha ;;
  }

  dimension: id_pregunta {
    type: number
    sql: ${TABLE}.IdPregunta ;;
  }

  dimension: id_respuesta {
    type: number
    sql: ${TABLE}.IdRespuesta ;;
  }

  dimension: respuesta {
    type: string
    sql: ${TABLE}.Respuesta ;;
  }
  measure: count {
    type: count
  }
}