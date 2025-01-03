# The name of this view in Looker is "Logorbit"
view: logorbit {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2seguridad.logorbit` ;;

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

  dimension: db_log {
    type: string
    sql: ${TABLE}.DbLog ;;
  }

  dimension: fecha_log {
    type: number
    sql: ${TABLE}.FechaLog ;;
  }

  dimension: formulario_log {
    type: string
    sql: ${TABLE}.FormularioLog ;;
  }

  dimension: hora_log {
    type: string
    sql: ${TABLE}.HoraLog ;;
  }

  dimension: id_log_clasif {
    type: number
    sql: ${TABLE}.idLogClasif ;;
  }

  dimension: id_log_orbit {
    type: number
    sql: ${TABLE}.idLogOrbit ;;
  }

  dimension: modulo_log {
    type: string
    sql: ${TABLE}.ModuloLog ;;
  }

  dimension: numero_version_log {
    type: number
    sql: ${TABLE}.NumeroVersionLog ;;
  }

  dimension: texto_log {
    type: string
    sql: ${TABLE}.TextoLog ;;
  }

  dimension: usuario_log {
    type: string
    sql: ${TABLE}.UsuarioLog ;;
  }
  measure: count {
    type: count
  }
}
