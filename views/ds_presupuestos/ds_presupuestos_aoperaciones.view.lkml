# The name of this view in Looker is "Ds Presupuestos Aoperaciones"
view: ds_presupuestos_aoperaciones {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.aoperaciones` ;;

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

  dimension_group: fecha_alta_operacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaAltaOperacion ;;
  }

  dimension_group: fecha_baja_operacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaBajaOperacion ;;
  }

  dimension: id_deposito_resta_stock_operacion {
    type: number
    sql: ${TABLE}.idDepositoRestaStockOperacion ;;
  }

  dimension: id_deposito_suma_stock_operacion {
    type: number
    sql: ${TABLE}.idDepositoSumaStockOperacion ;;
  }

  dimension: id_operacion {
    type: number
    sql: ${TABLE}.idOperacion ;;
  }

  dimension: id_operacion_denominacion {
    type: number
    sql: ${TABLE}.idOperacionDenominacion ;;
  }

  dimension: id_operacion_tipo {
    type: number
    sql: ${TABLE}.idOperacionTipo ;;
  }

  dimension: id_pvoperacion {
    type: number
    sql: ${TABLE}.idPVOperacion ;;
  }

  dimension: id_usuario_alta_operacion {
    type: number
    sql: ${TABLE}.idUsuarioAltaOperacion ;;
  }

  dimension: id_usuario_baja_operacion {
    type: number
    sql: ${TABLE}.idUsuarioBajaOperacion ;;
  }

  dimension: nombre_operacion {
    type: string
    sql: ${TABLE}.nombreOperacion ;;
  }

  dimension: permite_cambiar_deposito_resta_stock_operacion {
    type: number
    sql: ${TABLE}.permiteCambiarDepositoRestaStockOperacion ;;
  }

  dimension: permite_cambiar_deposito_suma_stock_operacion {
    type: number
    sql: ${TABLE}.permiteCambiarDepositoSumaStockOperacion ;;
  }

  dimension: utiliza_asientos_contables_operacion {
    type: number
    sql: ${TABLE}.utilizaAsientosContablesOperacion ;;
  }

  dimension: utiliza_despacho_operacion {
    type: number
    sql: ${TABLE}.utilizaDespachoOperacion ;;
  }

  dimension: utiliza_movimientos_de_stock_operacion {
    type: number
    sql: ${TABLE}.utilizaMovimientosDeStockOperacion ;;
  }

  dimension: utiliza_servicio_tecnico_operacion {
    type: number
    sql: ${TABLE}.utilizaServicioTecnicoOperacion ;;
  }
  measure: count {
    type: count
  }
}
