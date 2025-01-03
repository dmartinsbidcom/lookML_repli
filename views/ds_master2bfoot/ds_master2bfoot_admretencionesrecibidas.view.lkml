# The name of this view in Looker is "Ds Master2bfoot Admretencionesrecibidas"
view: ds_master2bfoot_admretencionesrecibidas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bfoot.admretencionesrecibidas` ;;

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

  dimension: fecha_retencion_recibida {
    type: number
    sql: ${TABLE}.FechaRetencionRecibida ;;
  }

  dimension: id_imputacion {
    type: number
    sql: ${TABLE}.idImputacion ;;
  }

  dimension: id_retencion_recibida {
    type: number
    sql: ${TABLE}.idRetencionRecibida ;;
  }

  dimension: linkcomprobanteretencionrecibida {
    type: string
    sql: ${TABLE}.linkcomprobanteretencionrecibida ;;
  }

  dimension: numeroretencionrecibida {
    type: string
    sql: ${TABLE}.numeroretencionrecibida ;;
  }
  measure: count {
    type: count
  }
}
