# The name of this view in Looker is "Ds Presupuestos Productos Peso A Kilos"
view: ds_presupuestos_productos_peso_a_kilos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.productos_peso_a_kilos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Alto Producto" in Explore.

  dimension: alto_producto {
    type: number
    sql: ${TABLE}.altoProducto ;;
  }

  dimension: ancho_producto {
    type: number
    sql: ${TABLE}.anchoProducto ;;
  }

  dimension: auto_grabar_mlorders {
    type: number
    sql: ${TABLE}.autoGrabarMLOrders ;;
  }

  dimension: codigo_producto {
    type: string
    sql: ${TABLE}.codigoProducto ;;
  }

  dimension: codigo_proveedor_producto {
    type: string
    sql: ${TABLE}.codigoProveedorProducto ;;
  }

  dimension: costo_producto {
    type: number
    sql: ${TABLE}.costoProducto ;;
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

  dimension: descripcion_producto {
    type: string
    sql: ${TABLE}.descripcionProducto ;;
  }

  dimension: es_fisico_producto {
    type: number
    sql: ${TABLE}.EsFisicoProducto ;;
  }

  dimension: es_kit_producto {
    type: number
    sql: ${TABLE}.esKitProducto ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_alta_producto {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaAltaProducto ;;
  }

  dimension_group: fecha_baja_producto {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaBajaProducto ;;
  }

  dimension: id_deposito_despacho {
    type: number
    sql: ${TABLE}.idDepositoDespacho ;;
  }

  dimension: id_producto {
    type: number
    sql: ${TABLE}.idProducto ;;
  }

  dimension: id_producto_checkout {
    type: number
    sql: ${TABLE}.idProductoCheckout ;;
  }

  dimension: id_producto_kit {
    type: number
    sql: ${TABLE}.idProductoKit ;;
  }

  dimension: id_producto_peso {
    type: number
    sql: ${TABLE}.idProductoPeso ;;
  }

  dimension: id_producto_sub_sub_categoria {
    type: number
    sql: ${TABLE}.idProductoSubSubCategoria ;;
  }

  dimension: id_producto_tipo {
    type: number
    sql: ${TABLE}.idProductoTipo ;;
  }

  dimension: id_usuario_alta {
    type: number
    sql: ${TABLE}.idUsuario_Alta ;;
  }

  dimension: id_usuario_baja {
    type: number
    sql: ${TABLE}.idUsuario_Baja ;;
  }

  dimension: ignorar_regla_pausado_producto {
    type: number
    sql: ${TABLE}.ignorarReglaPausadoProducto ;;
  }

  dimension: impuestos_internos_producto {
    type: number
    sql: ${TABLE}.impuestosInternosProducto ;;
  }

  dimension: insumo_packaging_producto {
    type: string
    sql: ${TABLE}.InsumoPackagingProducto ;;
  }

  dimension: meses_garantia_extendida_producto {
    type: number
    sql: ${TABLE}.mesesGarantiaExtendidaProducto ;;
  }

  dimension: meses_garantia_producto {
    type: number
    sql: ${TABLE}.mesesGarantiaProducto ;;
  }

  dimension: notas_producto {
    type: string
    sql: ${TABLE}.notasProducto ;;
  }

  dimension: ocultar_en_consulta_producto {
    type: number
    sql: ${TABLE}.ocultarEnConsultaProducto ;;
  }

  dimension: otros_impuestos_producto {
    type: number
    sql: ${TABLE}.otrosImpuestosProducto ;;
  }

  dimension: pausado_producto {
    type: number
    sql: ${TABLE}.pausadoProducto ;;
  }

  dimension: peso_especifico_producto {
    type: number
    sql: ${TABLE}.pesoEspecificoProducto ;;
  }

  dimension: porcentaje_ivaproducto {
    type: number
    sql: ${TABLE}.porcentajeIVAProducto ;;
  }

  dimension: porcentaje_recargo_garantia_extendida_producto {
    type: number
    sql: ${TABLE}.porcentajeRecargoGarantiaExtendidaProducto ;;
  }

  dimension: precio_producto {
    type: number
    sql: ${TABLE}.precioProducto ;;
  }

  dimension: profundidad_producto {
    type: number
    sql: ${TABLE}.profundidadProducto ;;
  }

  dimension: proveedor_producto {
    type: string
    sql: ${TABLE}.proveedorProducto ;;
  }

  dimension: pv_producto {
    type: number
    sql: ${TABLE}.pvProducto ;;
  }

  dimension: stock_regla_pausado_ml {
    type: number
    sql: ${TABLE}.stockReglaPausadoML ;;
  }

  dimension: tipo_nro_serie {
    type: number
    sql: ${TABLE}.Tipo_Nro_Serie ;;
  }

  dimension: visible_producto {
    type: number
    sql: ${TABLE}.visibleProducto ;;
  }
  measure: count {
    type: count
  }
}
