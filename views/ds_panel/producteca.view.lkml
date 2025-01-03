# The name of this view in Looker is "Producteca"
view: producteca {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.producteca` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Administracion" in Explore.

  dimension: administracion {
    type: string
    sql: ${TABLE}.administracion ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }

  dimension: cargado {
    type: string
    sql: ${TABLE}.cargado ;;
  }

  dimension: cliente {
    type: string
    sql: ${TABLE}.cliente ;;
  }

  dimension: codigo_postal {
    type: string
    sql: ${TABLE}.codigo_postal ;;
  }

  dimension: comanda {
    type: string
    sql: ${TABLE}.comanda ;;
  }

  dimension: contacto_tipo {
    type: string
    sql: ${TABLE}.contacto_tipo ;;
  }

  dimension: courrier {
    type: string
    sql: ${TABLE}.courrier ;;
  }

  dimension: cuit_dni {
    type: string
    sql: ${TABLE}.cuit_dni ;;
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

  dimension: direccion_altura {
    type: string
    sql: ${TABLE}.direccion_altura ;;
  }

  dimension: direccion_facturacion {
    type: string
    sql: ${TABLE}.direccion_facturacion ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: estado_pago {
    type: string
    sql: ${TABLE}.estado_pago ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_compra {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_compra ;;
  }

  dimension: fuente_venta {
    type: string
    sql: ${TABLE}.fuente_venta ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: id_venta_canal {
    type: string
    sql: ${TABLE}.id_venta_canal ;;
  }

  dimension: localidad {
    type: string
    sql: ${TABLE}.localidad ;;
  }

  dimension: monto_envio {
    type: number
    sql: ${TABLE}.monto_envio ;;
  }

  dimension: nro_documento_facturacion {
    type: string
    sql: ${TABLE}.nro_documento_facturacion ;;
  }

  dimension: nro_guia {
    type: string
    sql: ${TABLE}.nro_guia ;;
  }

  dimension: nro_pedido_producteca {
    type: string
    sql: ${TABLE}.nro_pedido_producteca ;;
  }

  dimension: operacion {
    type: string
    sql: ${TABLE}.operacion ;;
  }

  dimension: piso_dpto {
    type: string
    sql: ${TABLE}.piso_dpto ;;
  }

  dimension: precio {
    type: number
    sql: ${TABLE}.precio ;;
  }

  dimension: provincia {
    type: string
    sql: ${TABLE}.provincia ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.razon_social ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }

  dimension: tipo_documento_facturacion {
    type: string
    sql: ${TABLE}.tipo_documento_facturacion ;;
  }

  dimension: usuario_ml {
    type: string
    sql: ${TABLE}.usuario_ml ;;
  }
  measure: count {
    type: count
  }
}
