# The name of this view in Looker is "Ds Master2operativo Boproductos"
view: ds_master2operativo_boproductos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2operativo.boproductos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Alto Bo Producto" in Explore.

  dimension: alto_bo_producto {
    type: number
    sql: ${TABLE}.AltoBoProducto ;;
  }

  dimension: ancho_bo_producto {
    type: number
    sql: ${TABLE}.AnchoBoProducto ;;
  }

  dimension: codigo_boproducto {
    type: string
    sql: ${TABLE}.CodigoBOProducto ;;
  }

  dimension: codigo_proveedor_bo_producto {
    type: string
    sql: ${TABLE}.CodigoProveedorBoProducto ;;
  }

  dimension: costo_bo_producto {
    type: number
    sql: ${TABLE}.CostoBoProducto ;;
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

  dimension: es_kit_boproducto {
    type: number
    sql: ${TABLE}.EsKitBOProducto ;;
  }

  dimension: id_boproducto {
    type: number
    sql: ${TABLE}.idBOProducto ;;
  }

  dimension: idbofamilia {
    type: number
    sql: ${TABLE}.idbofamilia ;;
  }

  dimension: imp_int_boproducto {
    type: number
    sql: ${TABLE}.ImpIntBOProducto ;;
  }

  dimension: mcid_producto {
    type: number
    sql: ${TABLE}.MCidProducto ;;
  }

  dimension: mcid_producto_peso {
    type: number
    sql: ${TABLE}.MCidProductoPeso ;;
  }

  dimension: mcid_producto_sub_sub_categoria {
    type: number
    sql: ${TABLE}.MCidProductoSubSubCategoria ;;
  }

  dimension: meses_gtia_boproducto {
    type: number
    sql: ${TABLE}.MesesGtiaBOProducto ;;
  }

  dimension: meses_gtia_ext_boproducto {
    type: number
    sql: ${TABLE}.MesesGtiaExtBOProducto ;;
  }

  dimension: nombre_boproducto {
    type: string
    sql: ${TABLE}.NombreBOProducto ;;
  }

  dimension: pausado_bo_producto {
    type: number
    sql: ${TABLE}.PausadoBoProducto ;;
  }

  dimension: peso_especifico_bo_producto {
    type: number
    sql: ${TABLE}.PesoEspecificoBoProducto ;;
  }

  dimension: porc_rec_gtia_ext_boproducto {
    type: number
    sql: ${TABLE}.PorcRecGtiaExtBOProducto ;;
  }

  dimension: profundidad_bo_producto {
    type: number
    sql: ${TABLE}.ProfundidadBoProducto ;;
  }

  dimension: proveedor_bo_producto {
    type: string
    sql: ${TABLE}.ProveedorBoProducto ;;
  }

  dimension: tasa_ivaboproducto {
    type: number
    sql: ${TABLE}.TasaIVABOProducto ;;
  }

  dimension: venta_boproducto {
    type: number
    sql: ${TABLE}.VentaBOProducto ;;
  }
  measure: count {
    type: count
  }
}
