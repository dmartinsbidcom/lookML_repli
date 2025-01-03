# The name of this view in Looker is "Recuperar Clave"
view: recuperar_clave {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2operativo.recuperar_clave` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo" in Explore.

  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: estado_solicitud {
    type: number
    sql: ${TABLE}.estadoSolicitud ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_alta_soicitud {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaAltaSoicitud ;;
  }

  dimension_group: fecha_cambio_contrase_a {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaCambioContrase_a ;;
  }

  dimension: id_recuperar_clave {
    type: number
    sql: ${TABLE}.idRecuperarClave ;;
  }

  dimension: id_usuario {
    type: number
    sql: ${TABLE}.idUsuario ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  measure: count {
    type: count
  }
}
