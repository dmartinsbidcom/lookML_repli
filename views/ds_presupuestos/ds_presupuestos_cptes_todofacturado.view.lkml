# The name of this view in Looker is "Ds Presupuestos Cptes Todofacturado"
view: ds_presupuestos_cptes_todofacturado {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.cptes_todofacturado` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cant" in Explore.

  dimension: cant {
    type: number
    sql: ${TABLE}.Cant ;;
  }

  dimension: cc_caja {
    type: string
    sql: ${TABLE}.CC_Caja ;;
  }

  dimension: celular {
    type: string
    sql: ${TABLE}.Celular ;;
  }

  dimension: cliente {
    type: string
    sql: ${TABLE}.Cliente ;;
  }

  dimension: cod_seguimiento {
    type: string
    sql: ${TABLE}.Cod_Seguimiento ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}.Codigo ;;
  }

  dimension: cond_fiscal {
    type: string
    sql: ${TABLE}.Cond_Fiscal ;;
  }

  dimension: contabilizacion {
    type: string
    sql: ${TABLE}.Contabilizacion ;;
  }

  dimension: costo_despacho {
    type: string
    sql: ${TABLE}.Costo_Despacho ;;
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

  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
  }

  dimension: domicilio_calle {
    type: string
    sql: ${TABLE}.DomicilioCalle ;;
  }

  dimension: domicilio_cp {
    type: number
    sql: ${TABLE}.DomicilioCP ;;
  }

  dimension: domicilio_dpto {
    type: string
    sql: ${TABLE}.DomicilioDpto ;;
  }

  dimension: domicilio_localidad {
    type: string
    sql: ${TABLE}.DomicilioLocalidad ;;
  }

  dimension: domicilio_nro {
    type: string
    sql: ${TABLE}.DomicilioNro ;;
  }

  dimension: domicilio_piso {
    type: string
    sql: ${TABLE}.DomicilioPiso ;;
  }

  dimension: domicilio_provincia {
    type: string
    sql: ${TABLE}.DomicilioProvincia ;;
  }

  dimension: email_1 {
    type: string
    sql: ${TABLE}.Email_1 ;;
  }

  dimension: f_venta {
    type: string
    sql: ${TABLE}.F_Venta ;;
  }

  dimension: facturacion {
    type: string
    sql: ${TABLE}.Facturacion ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Fecha ;;
  }

  dimension: forma_pago {
    type: string
    sql: ${TABLE}.Forma_Pago ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.ID_Comprobante ;;
  }

  dimension: id_despacho {
    type: number
    sql: ${TABLE}.ID_Despacho ;;
  }

  dimension: id_factura {
    type: number
    sql: ${TABLE}.idFactura ;;
  }

  dimension: medio_despacho {
    type: string
    sql: ${TABLE}.Medio_Despacho ;;
  }

  dimension: monto_rendido {
    type: string
    sql: ${TABLE}.Monto_Rendido ;;
  }

  dimension: n_doc {
    type: string
    sql: ${TABLE}.N_Doc ;;
  }

  dimension: nro_operacion {
    type: string
    sql: ${TABLE}.Nro_Operacion ;;
  }

  dimension: numero {
    type: string
    sql: ${TABLE}.Numero ;;
  }

  dimension: numero_comprobante_externo {
    type: string
    sql: ${TABLE}.numeroComprobanteExterno ;;
  }

  dimension: numero_factura {
    type: string
    sql: ${TABLE}.NumeroFactura ;;
  }

  dimension: observaciones {
    type: string
    sql: ${TABLE}.Observaciones ;;
  }

  dimension: operacion {
    type: string
    sql: ${TABLE}.Operacion ;;
  }

  dimension: pend_anular {
    type: string
    sql: ${TABLE}.Pend_Anular ;;
  }

  dimension: percepcion {
    type: number
    sql: ${TABLE}.Percepcion ;;
  }

  dimension: precio_u {
    type: number
    sql: ${TABLE}.Precio_U ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.Razon_Social ;;
  }

  dimension: separador {
    type: string
    sql: ${TABLE}.Separador ;;
  }

  dimension: telefono_1 {
    type: string
    sql: ${TABLE}.Telefono_1 ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.Total ;;
  }

  dimension: usuario_ml {
    type: string
    sql: ${TABLE}.Usuario_ML ;;
  }

  dimension: vendedor {
    type: string
    sql: ${TABLE}.Vendedor ;;
  }
  measure: count {
    type: count
  }
}
