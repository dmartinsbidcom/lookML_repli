# The name of this view in Looker is "Ds Master2foretec Formatosdemail"
view: ds_master2foretec_formatosdemail {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2foretec.formatosdemail` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Aplicable Aformato Mail" in Explore.

  dimension: aplicable_aformato_mail {
    type: number
    sql: ${TABLE}.AplicableAFormatoMail ;;
  }

  dimension: asunto_formato_mail {
    type: string
    sql: ${TABLE}.AsuntoFormatoMail ;;
  }

  dimension: cuerpo_formato_mail {
    type: string
    sql: ${TABLE}.CuerpoFormatoMail ;;
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

  dimension: id_adm_idioma {
    type: number
    sql: ${TABLE}.idAdmIdioma ;;
  }

  dimension: id_formato_mail {
    type: number
    sql: ${TABLE}.idFormatoMail ;;
  }

  dimension: id_moneda {
    type: number
    sql: ${TABLE}.idMoneda ;;
  }

  dimension: imagen_firma_formato_mail {
    type: string
    sql: ${TABLE}.ImagenFirmaFormatoMail ;;
  }

  dimension: nombre_formato_mail {
    type: string
    sql: ${TABLE}.NombreFormatoMail ;;
  }

  dimension: observaciones_pdf_reclamo_formato_mail {
    type: string
    sql: ${TABLE}.ObservacionesPdfReclamoFormatoMail ;;
  }

  dimension: pvformato_mail {
    type: number
    sql: ${TABLE}.PVFormatoMail ;;
  }

  dimension: texto_firma_formato_mail {
    type: string
    sql: ${TABLE}.TextoFirmaFormatoMail ;;
  }

  dimension: tipo_comprobante_formato_mail {
    type: number
    sql: ${TABLE}.TipoComprobanteFormatoMail ;;
  }
  measure: count {
    type: count
  }
}
