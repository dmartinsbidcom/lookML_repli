# The name of this view in Looker is "Ds Presupuestos Cc Movimientos Campos"
view: ds_presupuestos_cc_movimientos_campos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.cc_movimientos_campos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Banco Ccmovimiento Campo" in Explore.

  dimension: banco_ccmovimiento_campo {
    type: string
    sql: ${TABLE}.bancoCCMovimientoCampo ;;
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
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_cobro_ccmovimiento_campo {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaCobroCCMovimientoCampo ;;
  }

  dimension_group: fecha_emision_ccmovimiento_campo {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaEmisionCCMovimientoCampo ;;
  }

  dimension: id_ccmovimiento {
    type: number
    sql: ${TABLE}.idCCMovimiento ;;
  }

  dimension: id_ccmovimiento_campo {
    type: number
    sql: ${TABLE}.idCCMovimientoCampo ;;
  }

  dimension: numero_cheque_ccmovimiento_campo {
    type: string
    sql: ${TABLE}.numeroChequeCCMovimientoCampo ;;
  }

  dimension: numero_operacion_ccmovimiento_campo {
    type: string
    sql: ${TABLE}.numeroOperacionCCMovimientoCampo ;;
  }

  dimension: tipo_cambio_ccmovimiento_campo {
    type: number
    sql: ${TABLE}.tipoCambioCCMovimientoCampo ;;
  }
  measure: count {
    type: count
  }
}
