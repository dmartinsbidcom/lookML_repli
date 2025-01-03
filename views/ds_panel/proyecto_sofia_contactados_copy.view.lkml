# The name of this view in Looker is "Proyecto Sofia Contactados Copy"
view: proyecto_sofia_contactados_copy {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.proyecto_sofia_contactados_copy` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Apellido" in Explore.

  dimension: apellido {
    type: string
    sql: ${TABLE}.apellido ;;
  }

  dimension: calificacion {
    type: string
    sql: ${TABLE}.calificacion ;;
  }

  dimension: canal {
    type: string
    sql: ${TABLE}.canal ;;
  }

  dimension: celular {
    type: string
    sql: ${TABLE}.celular ;;
  }

  dimension: comentario {
    type: string
    sql: ${TABLE}.comentario ;;
  }

  dimension: comprobante {
    type: number
    sql: ${TABLE}.comprobante ;;
  }

  dimension: cupon {
    type: string
    sql: ${TABLE}.cupon ;;
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

  dimension: dia_envio {
    type: string
    sql: ${TABLE}.dia_envio ;;
  }

  dimension: dni {
    type: string
    sql: ${TABLE}.dni ;;
  }

  dimension: enviado {
    type: string
    sql: ${TABLE}.enviado ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_compra {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_compra ;;
  }

  dimension_group: fecha_participacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_participacion ;;
  }

  dimension: horario_envio {
    type: string
    sql: ${TABLE}.horario_envio ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: id_caso {
    type: string
    sql: ${TABLE}.id_caso ;;
  }

  dimension: link {
    type: string
    sql: ${TABLE}.link ;;
  }

  dimension: medio {
    type: string
    sql: ${TABLE}.medio ;;
  }

  dimension: motivo {
    type: string
    sql: ${TABLE}.motivo ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: nombre_y_apellido {
    type: string
    sql: ${TABLE}.nombre_y_apellido ;;
  }

  dimension: participa {
    type: string
    sql: ${TABLE}.participa ;;
  }

  dimension: respuesta {
    type: string
    sql: ${TABLE}.respuesta ;;
  }

  dimension: seller_name {
    type: string
    sql: ${TABLE}.seller_name ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }

  dimension: tipo_venta {
    type: string
    sql: ${TABLE}.tipo_venta ;;
  }

  dimension: user_mail {
    type: string
    sql: ${TABLE}.user_mail ;;
  }

  dimension: user_mail_meli {
    type: string
    sql: ${TABLE}.user_mail_meli ;;
  }

  dimension: user_meli {
    type: string
    sql: ${TABLE}.user_meli ;;
  }

  dimension: usuario_valido {
    type: string
    sql: ${TABLE}.usuario_valido ;;
  }
  measure: count {
    type: count
    drill_fields: [seller_name]
  }
}
