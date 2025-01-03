# The name of this view in Looker is "Fichas Archivos"
view: fichas_archivos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.fichas_archivos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo Aguila" in Explore.

  dimension: codigo_aguila {
    type: string
    sql: ${TABLE}.codigo_aguila ;;
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

  dimension: id_archivo {
    type: number
    sql: ${TABLE}.id_archivo ;;
  }

  dimension: id_ficha {
    type: number
    sql: ${TABLE}.id_ficha ;;
  }
  measure: count {
    type: count
  }
}
