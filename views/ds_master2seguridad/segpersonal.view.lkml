# The name of this view in Looker is "Segpersonal"
view: segpersonal {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2seguridad.segpersonal` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Celular Seg Personal" in Explore.

  dimension: celular_seg_personal {
    type: string
    sql: ${TABLE}.CelularSegPersonal ;;
  }

  dimension: clave_seg_personal {
    type: string
    sql: ${TABLE}.ClaveSegPersonal ;;
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

  dimension: departamentosegpersonal {
    type: string
    sql: ${TABLE}.departamentosegpersonal ;;
  }

  dimension: e_mail_seg_personal {
    type: string
    sql: ${TABLE}.eMailSegPersonal ;;
  }

  dimension: es_supervisor_seg_personal {
    type: number
    sql: ${TABLE}.EsSupervisorSegPersonal ;;
  }

  dimension: esperfilsegpersonal {
    type: number
    sql: ${TABLE}.esperfilsegpersonal ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_alta_seg_personal {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FechaAltaSegPersonal ;;
  }

  dimension_group: fecha_baja_seg_personal {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FechaBajaSegPersonal ;;
  }

  dimension_group: fechacbclavesegpersonal {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechacbclavesegpersonal ;;
  }

  dimension_group: fechasuspensionsegpersonal {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechasuspensionsegpersonal ;;
  }

  dimension: id_seg_personal {
    type: number
    sql: ${TABLE}.idSegPersonal ;;
  }

  dimension: login_seg_personal {
    type: string
    sql: ${TABLE}.LoginSegPersonal ;;
  }

  dimension: nombre_seg_personal {
    type: string
    sql: ${TABLE}.NombreSegPersonal ;;
  }

  dimension: perfiles_autorizados_adelegar_seg_personal {
    type: string
    sql: ${TABLE}.PerfilesAutorizadosADelegarSegPersonal ;;
  }
  measure: count {
    type: count
  }
}
