# The name of this view in Looker is "Ds Presupuestos Agenda"
view: ds_presupuestos_agenda {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.agenda` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Celular Agenda" in Explore.

  dimension: celular_agenda {
    type: string
    sql: ${TABLE}.celularAgenda ;;
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

  dimension: e_mail1_agenda {
    type: string
    sql: ${TABLE}.eMail1Agenda ;;
  }

  dimension: e_mail2_agenda {
    type: string
    sql: ${TABLE}.eMail2Agenda ;;
  }

  dimension: es_mayorista_agenda {
    type: number
    sql: ${TABLE}.esMayoristaAgenda ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_ultimo_acceso_agenda {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaUltimoAccesoAgenda ;;
  }

  dimension: id_agenda {
    type: number
    sql: ${TABLE}.idAgenda ;;
  }

  dimension: id_condicion_fiscal {
    type: number
    sql: ${TABLE}.idCondicionFiscal ;;
  }

  dimension: id_domicilio {
    type: number
    sql: ${TABLE}.idDomicilio ;;
  }

  dimension: id_domicilio_facturacion {
    type: number
    sql: ${TABLE}.idDomicilioFacturacion ;;
  }

  dimension: id_tipo_agenda {
    type: number
    sql: ${TABLE}.idTipoAgenda ;;
  }

  dimension: id_tipo_documento {
    type: number
    sql: ${TABLE}.idTipoDocumento ;;
  }

  dimension: id_usuario_alta {
    type: number
    sql: ${TABLE}.idUsuarioAlta ;;
  }

  dimension: id_usuario_baja {
    type: number
    sql: ${TABLE}.idUsuarioBaja ;;
  }

  dimension: nombre_agenda {
    type: string
    sql: ${TABLE}.nombreAgenda ;;
  }

  dimension: numero_documento_agenda {
    type: string
    sql: ${TABLE}.numeroDocumentoAgenda ;;
  }

  dimension: password_agenda {
    type: string
    sql: ${TABLE}.passwordAgenda ;;
  }

  dimension: razon_social_agenda {
    type: string
    sql: ${TABLE}.razonSocialAgenda ;;
  }

  dimension: telefono1_agenda {
    type: string
    sql: ${TABLE}.telefono1Agenda ;;
  }

  dimension: telefono2_agenda {
    type: string
    sql: ${TABLE}.telefono2Agenda ;;
  }

  dimension: usuario_mlagenda {
    type: string
    sql: ${TABLE}.usuarioMLAgenda ;;
  }
  measure: count {
    type: count
  }
}
