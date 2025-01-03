# The name of this view in Looker is "Ds Presupuestos Mails"
view: ds_presupuestos_mails {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.mails` ;;

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

  dimension: descripcion_error_mail {
    type: string
    sql: ${TABLE}.descripcionErrorMail ;;
  }

  dimension: destino_mail {
    type: string
    sql: ${TABLE}.destinoMail ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_enviado_mail {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaEnviadoMail ;;
  }

  dimension_group: fecha_programada_mail {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaProgramadaMail ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.idComprobante ;;
  }

  dimension: id_despacho {
    type: number
    sql: ${TABLE}.idDespacho ;;
  }

  dimension: id_mail {
    type: number
    sql: ${TABLE}.idMail ;;
  }

  dimension: id_mail_estado {
    type: number
    sql: ${TABLE}.idMailEstado ;;
  }

  dimension: id_mail_formato {
    type: number
    sql: ${TABLE}.idMailFormato ;;
  }

  dimension: id_reclamo {
    type: number
    sql: ${TABLE}.idReclamo ;;
  }

  dimension: id_reparacion {
    type: number
    sql: ${TABLE}.idReparacion ;;
  }
  measure: count {
    type: count
  }
}
