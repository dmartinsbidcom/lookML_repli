# The name of this view in Looker is "Ds Checkoutbidcom Pedido"
view: ds_checkoutbidcom_pedido {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_checkoutbidcom.Pedido` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cant Notificaciones" in Explore.

  dimension: cant_notificaciones {
    type: number
    sql: ${TABLE}.CantNotificaciones ;;
  }

  dimension: cotizacion_dolar {
    type: number
    sql: ${TABLE}.CotizacionDolar ;;
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

  dimension: destino {
    type: string
    sql: ${TABLE}.Destino ;;
  }

  dimension: envio_hecho {
    type: number
    sql: ${TABLE}.EnvioHecho ;;
  }

  dimension: envio_internacional {
    type: number
    sql: ${TABLE}.EnvioInternacional ;;
  }

  dimension: estado {
    type: number
    sql: ${TABLE}.Estado ;;
  }

  dimension: fecha_acreditacion {
    type: string
    sql: ${TABLE}.FechaAcreditacion ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_envio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.FechaEnvio ;;
  }

  dimension_group: fecha_pedido {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.FechaPedido ;;
  }

  dimension: guia_correo {
    type: string
    sql: ${TABLE}.GuiaCorreo ;;
  }

  dimension: id_cliente {
    type: number
    sql: ${TABLE}.IdCliente ;;
  }

  dimension: id_metodo_pago {
    type: number
    sql: ${TABLE}.IdMetodoPago ;;
  }

  dimension: id_negocio {
    type: number
    sql: ${TABLE}.IdNegocio ;;
  }

  dimension: id_pedido {
    type: number
    sql: ${TABLE}.IdPedido ;;
  }

  dimension: id_producto {
    type: number
    sql: ${TABLE}.IdProducto ;;
  }

  dimension: id_vendedor {
    type: number
    sql: ${TABLE}.IdVendedor ;;
  }

  dimension: importe {
    type: number
    sql: ${TABLE}.Importe ;;
  }

  dimension: importe_costo_envio {
    type: number
    sql: ${TABLE}.ImporteCostoEnvio ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.IP ;;
  }

  dimension: metodo_envio {
    type: number
    sql: ${TABLE}.MetodoEnvio ;;
  }

  dimension: monto_acreditado {
    type: string
    sql: ${TABLE}.MontoAcreditado ;;
  }

  dimension: monto_neto_acreditado {
    type: string
    sql: ${TABLE}.MontoNetoAcreditado ;;
  }

  dimension: numero_dm {
    type: string
    sql: ${TABLE}.NumeroDM ;;
  }

  dimension: numero_mp {
    type: string
    sql: ${TABLE}.NumeroMP ;;
  }

  dimension: numero_pay_pal {
    type: string
    sql: ${TABLE}.NumeroPayPal ;;
  }

  dimension: oca {
    type: number
    sql: ${TABLE}.Oca ;;
  }

  dimension: pedido_migrado {
    type: string
    sql: ${TABLE}.PedidoMigrado ;;
  }

  dimension: sucursal_oca {
    type: string
    sql: ${TABLE}.SucursalOca ;;
  }

  dimension: tipo_envio {
    type: number
    sql: ${TABLE}.TipoEnvio ;;
  }
  measure: count {
    type: count
  }
}
