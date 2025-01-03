# The name of this view in Looker is "Ds Master2contable Actualizaciones"
view: ds_master2contable_actualizaciones {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2contable.actualizaciones` ;;

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

  dimension: descripcionactualizacion {
    type: string
    sql: ${TABLE}.descripcionactualizacion ;;
  }

  dimension: fecha_actualizacion {
    type: number
    sql: ${TABLE}.FechaActualizacion ;;
  }

  dimension: hora_actualizacion {
    type: number
    sql: ${TABLE}.HoraActualizacion ;;
  }

  dimension: idactualizacion {
    type: number
    sql: ${TABLE}.IDActualizacion ;;
  }

  dimension: query_actualizacion {
    type: string
    sql: ${TABLE}.QueryActualizacion ;;
  }
  measure: count {
    type: count
  }
}
