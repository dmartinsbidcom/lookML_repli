# The name of this view in Looker is "Bomailsenviados"
view: bomailsenviados {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bidcombo.bomailsenviados` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Comentario Bo Mail Enviado" in Explore.

  dimension: comentario_bo_mail_enviado {
    type: string
    sql: ${TABLE}.ComentarioBoMailEnviado ;;
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

  dimension: destino_bo_mail_enviado {
    type: string
    sql: ${TABLE}.DestinoBoMailEnviado ;;
  }

  dimension: estadobomailenviado {
    type: number
    sql: ${TABLE}.estadobomailenviado ;;
  }

  dimension: fecha_bo_mail_enviado {
    type: number
    sql: ${TABLE}.FechaBoMailEnviado ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fechaprogramadabomailenviado {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaprogramadabomailenviado ;;
  }

  dimension: hora_bo_mail_enviado {
    type: string
    sql: ${TABLE}.HoraBoMailEnviado ;;
  }

  dimension: id_bo_mail_enviado {
    type: number
    sql: ${TABLE}.idBoMailEnviado ;;
  }

  dimension: id_bo_pv_novedad {
    type: number
    sql: ${TABLE}.idBoPvNovedad ;;
  }

  dimension: id_bo_usuario {
    type: number
    sql: ${TABLE}.idBoUsuario ;;
  }

  dimension: idbocomprobante {
    type: number
    sql: ${TABLE}.idbocomprobante ;;
  }

  dimension: idboreparacion {
    type: number
    sql: ${TABLE}.idboreparacion ;;
  }

  dimension: idbostmovimiento {
    type: number
    sql: ${TABLE}.idbostmovimiento ;;
  }

  dimension: idemailtemplates {
    type: number
    sql: ${TABLE}.idemailtemplates ;;
  }

  dimension: mcid_mail {
    type: number
    sql: ${TABLE}.MCIdMail ;;
  }

  dimension: texto_html1bomailenviado {
    type: string
    sql: ${TABLE}.TextoHTML1bomailenviado ;;
  }
  measure: count {
    type: count
  }
}
