# The name of this view in Looker is "Ds Master2bemotec Mailsenviados"
view: ds_master2bemotec_mailsenviados {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bemotec.mailsenviados` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Asunto Mail" in Explore.

  dimension: asunto_mail {
    type: string
    sql: ${TABLE}.AsuntoMail ;;
  }

  dimension: cuerpo_mail {
    type: string
    sql: ${TABLE}.CuerpoMail ;;
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

  dimension: descripcion_mail {
    type: string
    sql: ${TABLE}.DescripcionMail ;;
  }

  dimension: fecha_mail {
    type: number
    sql: ${TABLE}.FechaMail ;;
  }

  dimension: hora_mail {
    type: string
    sql: ${TABLE}.HoraMail ;;
  }

  dimension: id_cc {
    type: number
    sql: ${TABLE}.idCC ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.idComprobante ;;
  }

  dimension: id_empresa {
    type: number
    sql: ${TABLE}.idEmpresa ;;
  }

  dimension: id_mail {
    type: number
    sql: ${TABLE}.idMail ;;
  }

  dimension: id_usuario {
    type: number
    sql: ${TABLE}.idUsuario ;;
  }

  dimension: id_usuario_destino {
    type: number
    sql: ${TABLE}.idUsuarioDestino ;;
  }

  dimension: mail_destino_mail {
    type: string
    sql: ${TABLE}.MailDestinoMail ;;
  }

  dimension: mail_origen_mail {
    type: string
    sql: ${TABLE}.MailOrigenMail ;;
  }
  measure: count {
    type: count
  }
}
