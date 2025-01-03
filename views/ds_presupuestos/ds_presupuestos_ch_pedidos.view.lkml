# The name of this view in Looker is "Ds Presupuestos Ch Pedidos"
view: ds_presupuestos_ch_pedidos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.ch_pedidos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Apellido Receptor Chpedido" in Explore.

  dimension: apellido_receptor_chpedido {
    type: string
    sql: ${TABLE}.apellidoReceptorCHPedido ;;
  }

  dimension: costo_envio_chpedido {
    type: number
    sql: ${TABLE}.costoEnvioCHPedido ;;
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

  dimension: empresa_micro_chpedido {
    type: string
    sql: ${TABLE}.empresaMicroCHPedido ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_chpedido {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaCHPedido ;;
  }

  dimension_group: fecha_envio_chpedido {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaEnvioCHPedido ;;
  }

  dimension: hora_envio_chpedido {
    type: string
    sql: ${TABLE}.horaEnvioCHPedido ;;
  }

  dimension: id_chcliente {
    type: number
    sql: ${TABLE}.idCHCliente ;;
  }

  dimension: id_chpedido {
    type: number
    sql: ${TABLE}.idCHPedido ;;
  }

  dimension: id_chpedido_estado {
    type: number
    sql: ${TABLE}.idCHPedidoEstado ;;
  }

  dimension: id_chvendedor {
    type: number
    sql: ${TABLE}.idCHVendedor ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.idComprobante ;;
  }

  dimension: id_operacion_chpedido {
    type: number
    sql: ${TABLE}.idOperacionCHPedido ;;
  }

  dimension: importe_chpedido {
    type: number
    sql: ${TABLE}.importeCHPedido ;;
  }

  dimension: medio_envio_chpedido {
    type: string
    sql: ${TABLE}.medioEnvioCHPedido ;;
  }

  dimension: medio_pago_chpedido {
    type: string
    sql: ${TABLE}.medioPagoCHPedido ;;
  }

  dimension: monto_acreditado_chpedido {
    type: number
    sql: ${TABLE}.montoAcreditadoCHPedido ;;
  }

  dimension: nombre_receptor_chpedido {
    type: string
    sql: ${TABLE}.nombreReceptorCHPedido ;;
  }

  dimension: numero_operacion_chpedido {
    type: string
    sql: ${TABLE}.numeroOperacionCHPedido ;;
  }

  dimension: observaciones_envio_chpedido {
    type: string
    sql: ${TABLE}.observacionesEnvioCHPedido ;;
  }

  dimension: sucursal_ocachpedido {
    type: string
    sql: ${TABLE}.sucursalOCACHPedido ;;
  }
  measure: count {
    type: count
  }
}
