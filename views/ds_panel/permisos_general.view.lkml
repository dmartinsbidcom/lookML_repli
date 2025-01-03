# The name of this view in Looker is "Permisos General"
view: permisos_general {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.permisos_general` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Activo" in Explore.

  dimension: activo {
    type: number
    sql: ${TABLE}.activo ;;
  }

  dimension: categoria {
    type: number
    sql: ${TABLE}.categoria ;;
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

  dimension: id_panel {
    type: number
    sql: ${TABLE}.id_panel ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.login ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }
  measure: count {
    type: count
  }
}
