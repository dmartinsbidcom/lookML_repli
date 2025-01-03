# The name of this view in Looker is "Ds Presupuestos Despachos"
view: ds_presupuestos_despachos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.despachos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Apellido Receptor Despacho" in Explore.

  dimension: apellido_receptor_despacho {
    type: string
    sql: ${TABLE}.apellidoReceptorDespacho ;;
  }

  dimension: cod_despacho_sucursal {
    type: string
    sql: ${TABLE}.CodDespachoSucursal ;;
  }

  dimension: codigo_seguimiento_despacho {
    type: string
    sql: ${TABLE}.codigoSeguimientoDespacho ;;
  }

  dimension: costo_despacho {
    type: number
    sql: ${TABLE}.costoDespacho ;;
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

  dimension: despacho_terminal {
    type: string
    sql: ${TABLE}.despachoTerminal ;;
  }

  dimension: domicilio_entrega_valido {
    type: number
    sql: ${TABLE}.Domicilio_Entrega_Valido ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_alta_despacho {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaAltaDespacho ;;
  }

  dimension_group: fecha_anula_despacho {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaAnulaDespacho ;;
  }

  dimension_group: fecha_entrega_despacho {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaEntregaDespacho ;;
  }

  dimension_group: fecha_envio_despacho {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaEnvioDespacho ;;
  }

  dimension_group: fecha_pago_motos_despacho {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaPagoMotosDespacho ;;
  }

  dimension_group: fecha_recepcion_despacho {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaRecepcionDespacho ;;
  }

  dimension: horario_entrega_despacho {
    type: string
    sql: ${TABLE}.horarioEntregaDespacho ;;
  }

  dimension: id_agenda {
    type: number
    sql: ${TABLE}.idAgenda ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.idComprobante ;;
  }

  dimension: id_comprobante_administrativo {
    type: number
    sql: ${TABLE}.idComprobante_Administrativo ;;
  }

  dimension: id_deposito_despacho {
    type: number
    sql: ${TABLE}.idDepositoDespacho ;;
  }

  dimension: id_despacho {
    type: number
    sql: ${TABLE}.idDespacho ;;
  }

  dimension: id_despacho_estado {
    type: number
    sql: ${TABLE}.idDespachoEstado ;;
  }

  dimension: id_despacho_medio_responsable {
    type: number
    sql: ${TABLE}.idDespachoMedioResponsable ;;
  }

  dimension: id_despacho_sucursal {
    type: number
    sql: ${TABLE}.idDespachoSucursal ;;
  }

  dimension: id_despacho_tipo {
    type: number
    sql: ${TABLE}.idDespachoTipo ;;
  }

  dimension: id_domicilio {
    type: number
    sql: ${TABLE}.idDomicilio ;;
  }

  dimension: id_usuario_alta_despacho {
    type: number
    sql: ${TABLE}.idUsuario_AltaDespacho ;;
  }

  dimension: id_usuario_anula_despacho {
    type: number
    sql: ${TABLE}.idUsuario_AnulaDespacho ;;
  }

  dimension: id_usuario_envio_despacho {
    type: number
    sql: ${TABLE}.idUsuario_EnvioDespacho ;;
  }

  dimension: id_usuario_pago_motos_despacho {
    type: number
    sql: ${TABLE}.idUsuario_PagoMotosDespacho ;;
  }

  dimension: id_usuario_responsable {
    type: number
    sql: ${TABLE}.idUsuarioResponsable ;;
  }

  dimension: monto_contrareembolso_despacho {
    type: number
    sql: ${TABLE}.montoContrareembolsoDespacho ;;
  }

  dimension: monto_rendido_despacho {
    type: number
    sql: ${TABLE}.montoRendidoDespacho ;;
  }

  dimension: nombre_despacho_empresa {
    type: string
    sql: ${TABLE}.nombreDespachoEmpresa ;;
  }

  dimension: nombre_receptor_despacho {
    type: string
    sql: ${TABLE}.nombreReceptorDespacho ;;
  }

  dimension: observaciones_despacho {
    type: string
    sql: ${TABLE}.observacionesDespacho ;;
  }

  dimension: tipo_domicilio_entrega {
    type: string
    sql: ${TABLE}.TipoDomicilioEntrega ;;
  }
  measure: count {
    type: count
  }
}
