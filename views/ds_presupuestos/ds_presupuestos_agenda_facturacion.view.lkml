# The name of this view in Looker is "Ds Presupuestos Agenda Facturacion"
view: ds_presupuestos_agenda_facturacion {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.agenda_facturacion` ;;

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
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_alta_agenda_facturacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaAltaAgendaFacturacion ;;
  }

  dimension_group: fecha_baja_agenda_facturacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaBajaAgendaFacturacion ;;
  }

  dimension: id_agenda {
    type: number
    sql: ${TABLE}.idAgenda ;;
  }

  dimension: id_agenda_facturacion {
    type: number
    sql: ${TABLE}.idAgendaFacturacion ;;
  }

  dimension: id_condicion_fiscal {
    type: number
    sql: ${TABLE}.idCondicionFiscal ;;
  }

  dimension: id_domicilio {
    type: number
    sql: ${TABLE}.idDomicilio ;;
  }

  dimension: id_tipo_documento {
    type: number
    sql: ${TABLE}.idTipoDocumento ;;
  }

  dimension: id_usuario_alta {
    type: number
    sql: ${TABLE}.idUsuario_Alta ;;
  }

  dimension: iibb {
    type: number
    sql: ${TABLE}.iibb ;;
  }

  dimension: numero_documento_agenda_facturacion {
    type: string
    sql: ${TABLE}.numeroDocumentoAgendaFacturacion ;;
  }

  dimension: razon_social_agenda_facturacion {
    type: string
    sql: ${TABLE}.razonSocialAgendaFacturacion ;;
  }
  measure: count {
    type: count
  }
}
