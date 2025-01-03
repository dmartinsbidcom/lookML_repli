# The name of this view in Looker is "Ds Presupuestos Despachos Remito Retiro"
view: ds_presupuestos_despachos_remito_retiro {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.despachos_remito_retiro` ;;

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

  dimension: dni_que_retira {
    type: string
    sql: ${TABLE}.DNI_Que_Retira ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_retiro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaRetiro ;;
  }

  dimension: foto_dni {
    type: string
    sql: ${TABLE}.fotoDNI ;;
  }

  dimension: foto_firma {
    type: string
    sql: ${TABLE}.fotoFirma ;;
  }

  dimension: id_remito {
    type: number
    sql: ${TABLE}.idRemito ;;
  }

  dimension: id_usuario {
    type: number
    sql: ${TABLE}.idUsuario ;;
  }

  dimension: nombre_medio_responsable {
    type: string
    sql: ${TABLE}.NombreMedioResponsable ;;
  }

  dimension: nombre_que_retira {
    type: string
    sql: ${TABLE}.Nombre_Que_Retira ;;
  }
  measure: count {
    type: count
  }
}
