# The name of this view in Looker is "Ds Master2bfoot Logaguila"
view: ds_master2bfoot_logaguila {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bfoot.logaguila` ;;

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

  dimension: fecha_log {
    type: number
    sql: ${TABLE}.FechaLog ;;
  }

  dimension: hora_log {
    type: string
    sql: ${TABLE}.HoraLog ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.idComprobante ;;
  }

  dimension: id_log {
    type: number
    sql: ${TABLE}.idLog ;;
  }

  dimension: id_usuario {
    type: number
    sql: ${TABLE}.idUsuario ;;
  }

  dimension: texto_error_log {
    type: string
    sql: ${TABLE}.TextoErrorLog ;;
  }

  dimension: texto_log {
    type: string
    sql: ${TABLE}.TextoLog ;;
  }

  dimension: tipo_log {
    type: number
    sql: ${TABLE}.TipoLog ;;
  }
  measure: count {
    type: count
  }
}
