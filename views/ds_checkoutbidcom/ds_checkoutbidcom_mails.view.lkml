# The name of this view in Looker is "Ds Checkoutbidcom Mails"
view: ds_checkoutbidcom_mails {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_checkoutbidcom.Mails` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Asunto" in Explore.

  dimension: asunto {
    type: string
    sql: ${TABLE}.Asunto ;;
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

  dimension: envia_vendedor {
    type: number
    sql: ${TABLE}.EnviaVendedor ;;
  }

  dimension: id_mail {
    type: number
    sql: ${TABLE}.IdMail ;;
  }

  dimension: mail {
    type: string
    sql: ${TABLE}.Mail ;;
  }

  dimension: mensaje {
    type: string
    sql: ${TABLE}.Mensaje ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  dimension: remitente {
    type: string
    sql: ${TABLE}.Remitente ;;
  }

  dimension: toma_email_producto {
    type: number
    sql: ${TABLE}.TomaEmailProducto ;;
  }
  measure: count {
    type: count
  }
}
