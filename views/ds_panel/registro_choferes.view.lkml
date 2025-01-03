# The name of this view in Looker is "Registro Choferes"
view: registro_choferes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.registro_choferes` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Chofer" in Explore.

  dimension: chofer {
    type: string
    sql: ${TABLE}.chofer ;;
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

  dimension: dias {
    type: string
    sql: ${TABLE}.dias ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: turno {
    type: string
    sql: ${TABLE}.turno ;;
  }

  dimension: vehiculo {
    type: string
    sql: ${TABLE}.vehiculo ;;
  }
  measure: count {
    type: count
  }
}
