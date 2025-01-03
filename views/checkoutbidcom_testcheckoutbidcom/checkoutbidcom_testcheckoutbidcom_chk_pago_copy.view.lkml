# The name of this view in Looker is "Checkoutbidcom Testcheckoutbidcom Chk Pago Copy"
view: checkoutbidcom_testcheckoutbidcom_chk_pago_copy {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `checkoutbidcom_testcheckoutbidcom.CHK_Pago_copy` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cargada" in Explore.

  dimension: cargada {
    type: string
    sql: ${TABLE}.cargada ;;
  }

  dimension: costo_envio {
    type: string
    sql: ${TABLE}.costoEnvio ;;
  }

  dimension: costo_transaccional {
    type: number
    sql: ${TABLE}.costoTransaccional ;;
  }

  dimension: cuenta {
    type: string
    sql: ${TABLE}.cuenta ;;
  }

  dimension: cuit {
    type: string
    sql: ${TABLE}.cuit ;;
  }

  dimension: cuotas {
    type: number
    sql: ${TABLE}.cuotas ;;
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

  dimension: detalle_estado {
    type: string
    sql: ${TABLE}.detalleEstado ;;
  }

  dimension: detalle_medio_de_pago {
    type: string
    sql: ${TABLE}.detalleMedioDePago ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_aprobacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaAprobacion ;;
  }

  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaCreacion ;;
  }

  dimension_group: fecha_disponibilidad {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaDisponibilidad ;;
  }

  dimension: getnet_uuid {
    type: string
    sql: ${TABLE}.getnet_UUID ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: id_carrito {
    type: number
    sql: ${TABLE}.idCarrito ;;
  }

  dimension: id_cliente {
    type: number
    sql: ${TABLE}.idCliente ;;
  }

  dimension: id_datos_fiscales {
    type: number
    sql: ${TABLE}.idDatosFiscales ;;
  }

  dimension: interes {
    type: number
    sql: ${TABLE}.interes ;;
  }

  dimension: medio_de_pago {
    type: string
    sql: ${TABLE}.medioDePago ;;
  }

  dimension: monto {
    type: number
    sql: ${TABLE}.monto ;;
  }

  dimension: monto_neto_recibido {
    type: number
    sql: ${TABLE}.montoNetoRecibido ;;
  }

  dimension: plataforma_pago {
    type: string
    sql: ${TABLE}.plataforma_pago ;;
  }

  dimension: tipo_factura {
    type: string
    sql: ${TABLE}.tipo_factura ;;
  }
  measure: count {
    type: count
  }
}
