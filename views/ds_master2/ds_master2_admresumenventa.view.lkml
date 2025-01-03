# The name of this view in Looker is "Ds Master2 Admresumenventa"
view: ds_master2_admresumenventa {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2.admresumenventa` ;;

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

  dimension: desdefechaadmresumenventa {
    type: number
    sql: ${TABLE}.desdefechaadmresumenventa ;;
  }

  dimension: estadoadmresumenventa {
    type: number
    sql: ${TABLE}.estadoadmresumenventa ;;
  }

  dimension: hastafechaadmresumenventa {
    type: number
    sql: ${TABLE}.hastafechaadmresumenventa ;;
  }

  dimension: idadmresumenventa {
    type: number
    sql: ${TABLE}.idadmresumenventa ;;
  }

  dimension: idcomprobante {
    type: number
    sql: ${TABLE}.idcomprobante ;;
  }
  measure: count {
    type: count
  }
}
