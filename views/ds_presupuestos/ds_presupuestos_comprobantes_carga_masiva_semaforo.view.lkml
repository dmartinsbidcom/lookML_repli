# The name of this view in Looker is "Ds Presupuestos Comprobantes Carga Masiva Semaforo"
view: ds_presupuestos_comprobantes_carga_masiva_semaforo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.comprobantes_carga_masiva_semaforo` ;;

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

  dimension: id_usuario {
    type: number
    sql: ${TABLE}.idUsuario ;;
  }

  dimension: nombre_usuario {
    type: string
    sql: ${TABLE}.nombreUsuario ;;
  }

  dimension: x_carga {
    type: string
    sql: ${TABLE}.X_Carga ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: x_hora {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.X_Hora ;;
  }

  dimension_group: x_hora_actual {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.X_Hora_Actual ;;
  }

  dimension: x_modo {
    type: string
    sql: ${TABLE}.X_Modo ;;
  }

  dimension: x_opcion {
    type: string
    sql: ${TABLE}.X_Opcion ;;
  }

  dimension: x_pc {
    type: string
    sql: ${TABLE}.X_PC ;;
  }

  dimension: x_reg_actual {
    type: number
    sql: ${TABLE}.X_Reg_Actual ;;
  }

  dimension: x_reg_porcentaje {
    type: number
    sql: ${TABLE}.X_Reg_Porcentaje ;;
  }

  dimension: x_reg_total {
    type: number
    sql: ${TABLE}.X_Reg_Total ;;
  }
  measure: count {
    type: count
  }
}
