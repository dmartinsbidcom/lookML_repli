# The name of this view in Looker is "Terms Family"
view: terms_family {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_bidcom.terms_family` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Columna" in Explore.

  dimension: columna {
    type: number
    sql: ${TABLE}.columna ;;
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

  dimension: orden {
    type: number
    sql: ${TABLE}.orden ;;
  }

  dimension: term_id {
    type: number
    sql: ${TABLE}.term_id ;;
  }

  dimension: term_id_hijo {
    type: number
    value_format_name: id
    sql: ${TABLE}.term_id_hijo ;;
  }
  measure: count {
    type: count
  }
}
