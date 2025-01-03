# The name of this view in Looker is "Ds Presupuestos Comprobantes Empresas Relacionadas"
view: ds_presupuestos_comprobantes_empresas_relacionadas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.comprobantes_empresas_relacionadas` ;;

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

  dimension_group: fecha_compra_comprobante_empresa_relacionada {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaCompraComprobanteEmpresaRelacionada ;;
  }

  dimension: id_agenda {
    type: number
    sql: ${TABLE}.idAgenda ;;
  }

  dimension: id_comprobante_empresa_relacionada {
    type: number
    sql: ${TABLE}.idComprobanteEmpresaRelacionada ;;
  }

  dimension: id_producto {
    type: number
    sql: ${TABLE}.idProducto ;;
  }

  dimension: letra_comprobante_empresa_relacionada {
    type: string
    sql: ${TABLE}.letraComprobanteEmpresaRelacionada ;;
  }

  dimension: numero_comprobante_empresa_relacionada {
    type: string
    sql: ${TABLE}.numeroComprobanteEmpresaRelacionada ;;
  }

  dimension: precio_producto {
    type: number
    sql: ${TABLE}.precioProducto ;;
  }

  dimension: pv_comprobante_empresa_relacionada {
    type: string
    sql: ${TABLE}.pvComprobanteEmpresaRelacionada ;;
  }

  dimension: tipo_comprobante_empresa_relacionada {
    type: string
    sql: ${TABLE}.tipoComprobanteEmpresaRelacionada ;;
  }
  measure: count {
    type: count
  }
}
