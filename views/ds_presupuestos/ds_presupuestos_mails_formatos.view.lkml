# The name of this view in Looker is "Ds Presupuestos Mails Formatos"
view: ds_presupuestos_mails_formatos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.mails_formatos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Asunto Mail Formato" in Explore.

  dimension: asunto_mail_formato {
    type: string
    sql: ${TABLE}.asuntoMailFormato ;;
  }

  dimension: bcc_mail_formato {
    type: string
    sql: ${TABLE}.bccMailFormato ;;
  }

  dimension: cc_mail_formato {
    type: string
    sql: ${TABLE}.ccMailFormato ;;
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

  dimension: id_mail_formato {
    type: number
    sql: ${TABLE}.idMailFormato ;;
  }

  dimension: id_mail_formato_tipo {
    type: number
    sql: ${TABLE}.idMailFormatoTipo ;;
  }

  dimension: mensaje_mail_formato {
    type: string
    sql: ${TABLE}.mensajeMailFormato ;;
  }

  dimension: nombre_mail_formato {
    type: string
    sql: ${TABLE}.nombreMailFormato ;;
  }

  dimension: origen_mail_formato {
    type: string
    sql: ${TABLE}.origenMailFormato ;;
  }
  measure: count {
    type: count
  }
}
