# The name of this view in Looker is "Bocomprobantes"
view: bocomprobantes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bidcombo.bocomprobantes` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Agid Comprobante" in Explore.

  dimension: agid_comprobante {
    type: number
    sql: ${TABLE}.AGidComprobante ;;
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

  dimension: fecha_bocomprobante {
    type: number
    sql: ${TABLE}.FechaBOComprobante ;;
  }

  dimension: id_bocomprobante {
    type: number
    sql: ${TABLE}.idBOComprobante ;;
  }

  dimension: id_bocomprobante_inicial {
    type: number
    sql: ${TABLE}.idBOComprobanteInicial ;;
  }

  dimension: id_bodomicilio {
    type: number
    sql: ${TABLE}.idBODomicilio ;;
  }

  dimension: id_bodomicilio_facturacion {
    type: number
    sql: ${TABLE}.idBODomicilioFacturacion ;;
  }

  dimension: id_botipo_comprobante {
    type: number
    sql: ${TABLE}.idBOTipoComprobante ;;
  }

  dimension: id_bousuario_alta {
    type: number
    sql: ${TABLE}.idBOUsuarioAlta ;;
  }

  dimension: mcid_comprobante {
    type: number
    sql: ${TABLE}.MCidComprobante ;;
  }

  dimension: mcid_fuente_venta {
    type: number
    sql: ${TABLE}.MCidFuenteVenta ;;
  }

  dimension: mcid_mlseller {
    type: number
    sql: ${TABLE}.MCidMLSeller ;;
  }

  dimension: mcid_reparacion {
    type: number
    sql: ${TABLE}.MCIdReparacion ;;
  }

  dimension: mcidoperacion {
    type: number
    sql: ${TABLE}.mcidoperacion ;;
  }

  dimension: numero_bocomprobante {
    type: number
    sql: ${TABLE}.NumeroBOComprobante ;;
  }

  dimension: numero_comp_aguila {
    type: string
    sql: ${TABLE}.NumeroCompAguila ;;
  }

  dimension: order_id_mlseller {
    type: number
    sql: ${TABLE}.OrderIdMLSeller ;;
  }
  measure: count {
    type: count
  }
}
