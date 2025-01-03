# The name of this view in Looker is "Checkoutbidcom Testcheckoutbidcom Chk Datos Fiscales Temp"
view: checkoutbidcom_testcheckoutbidcom_chk_datos_fiscales_temp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `checkoutbidcom_testcheckoutbidcom.CHK_DatosFiscalesTemp` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: actualizado_en {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.actualizadoEn ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Altura" in Explore.

  dimension: altura {
    type: string
    sql: ${TABLE}.altura ;;
  }

  dimension: calle {
    type: string
    sql: ${TABLE}.calle ;;
  }

  dimension: codigo_postal {
    type: string
    sql: ${TABLE}.codigo_postal ;;
  }

  dimension_group: creado_en {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.creadoEn ;;
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

  dimension: departamento {
    type: string
    sql: ${TABLE}.departamento ;;
  }

  dimension: id_datos_fiscales_temp {
    type: number
    sql: ${TABLE}.idDatosFiscalesTemp ;;
  }

  dimension: localidad {
    type: string
    sql: ${TABLE}.localidad ;;
  }

  dimension: piso {
    type: string
    sql: ${TABLE}.piso ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.razon_social ;;
  }
  measure: count {
    type: count
  }
}
