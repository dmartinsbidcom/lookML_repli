# The name of this view in Looker is "Ds Master2bemotec Admdefpuntovtafac"
view: ds_master2bemotec_admdefpuntovtafac {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bemotec.admdefpuntovtafac` ;;

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

  dimension: descripcion_punto_vta_fac {
    type: string
    sql: ${TABLE}.DescripcionPuntoVtaFac ;;
  }

  dimension: dom_fac_domicilio {
    type: string
    sql: ${TABLE}.DomFacDomicilio ;;
  }

  dimension: dom_fac_localidad {
    type: string
    sql: ${TABLE}.DomFacLocalidad ;;
  }

  dimension: dom_fac_mail {
    type: string
    sql: ${TABLE}.DomFacMail ;;
  }

  dimension: dom_fac_provincia {
    type: string
    sql: ${TABLE}.DomFacProvincia ;;
  }

  dimension: dom_fac_razon_social {
    type: string
    sql: ${TABLE}.DomFacRazonSocial ;;
  }

  dimension: dom_fac_telefono {
    type: string
    sql: ${TABLE}.DomFacTelefono ;;
  }

  dimension: fecha_ultimo_comprobante_punto_vta_fac {
    type: number
    sql: ${TABLE}.FechaUltimoComprobantePuntoVtaFac ;;
  }

  dimension: id_formato {
    type: number
    sql: ${TABLE}.IdFormato ;;
  }

  dimension: id_formato_rm {
    type: number
    sql: ${TABLE}.idFormatoRM ;;
  }

  dimension: id_punto_vta_fac {
    type: number
    sql: ${TABLE}.idPuntoVtaFac ;;
  }

  dimension: idun {
    type: number
    sql: ${TABLE}.IDUN ;;
  }

  dimension: iphasar_punto_vta_fac {
    type: string
    sql: ${TABLE}.IPHasarPuntoVtaFac ;;
  }

  dimension: marca_fiscal_punto_vta_fac {
    type: string
    sql: ${TABLE}.MarcaFiscalPuntoVtaFac ;;
  }

  dimension: modelo_fiscal_punto_vta_fac {
    type: string
    sql: ${TABLE}.ModeloFiscalPuntoVtaFac ;;
  }

  dimension: num_fc_apunto_vta_fac {
    type: number
    sql: ${TABLE}.NumFcAPuntoVtaFac ;;
  }

  dimension: num_fc_bpunto_vta_fac {
    type: number
    sql: ${TABLE}.NumFcBPuntoVtaFac ;;
  }

  dimension: num_fc_epunto_vta_fac {
    type: number
    sql: ${TABLE}.NumFcEPuntoVtaFac ;;
  }

  dimension: num_mi_py_mefc_apunto_vta_fac {
    type: number
    sql: ${TABLE}.NumMiPyMEFcAPuntoVtaFac ;;
  }

  dimension: num_mi_py_mefc_bpunto_vta_fac {
    type: number
    sql: ${TABLE}.NumMiPyMEFcBPuntoVtaFac ;;
  }

  dimension: num_mi_py_mefc_epunto_vta_fac {
    type: number
    sql: ${TABLE}.NumMiPyMEFcEPuntoVtaFac ;;
  }

  dimension: num_mi_py_mencapunto_vta_fac {
    type: number
    sql: ${TABLE}.NumMiPyMENCAPuntoVtaFac ;;
  }

  dimension: num_mi_py_mencbpunto_vta_fac {
    type: number
    sql: ${TABLE}.NumMiPyMENCBPuntoVtaFac ;;
  }

  dimension: num_mi_py_mencepunto_vta_fac {
    type: number
    sql: ${TABLE}.NumMiPyMENCEPuntoVtaFac ;;
  }

  dimension: num_mi_py_mendapunto_vta_fac {
    type: number
    sql: ${TABLE}.NumMiPyMENDAPuntoVtaFac ;;
  }

  dimension: num_mi_py_mendbpunto_vta_fac {
    type: number
    sql: ${TABLE}.NumMiPyMENDBPuntoVtaFac ;;
  }

  dimension: num_mi_py_mendepunto_vta_fac {
    type: number
    sql: ${TABLE}.NumMiPyMENDEPuntoVtaFac ;;
  }

  dimension: num_ncapunto_vta_fac {
    type: number
    sql: ${TABLE}.NumNCAPuntoVtaFac ;;
  }

  dimension: num_ncbpunto_vta_fac {
    type: number
    sql: ${TABLE}.NumNCBPuntoVtaFac ;;
  }

  dimension: num_ncepunto_vta_fac {
    type: number
    sql: ${TABLE}.NumNCEPuntoVtaFac ;;
  }

  dimension: num_ndapunto_vta_fac {
    type: number
    sql: ${TABLE}.NumNDAPuntoVtaFac ;;
  }

  dimension: num_ndbpunto_vta_fac {
    type: number
    sql: ${TABLE}.NumNDBPuntoVtaFac ;;
  }

  dimension: num_ndepunto_vta_fac {
    type: number
    sql: ${TABLE}.NumNDEPuntoVtaFac ;;
  }

  dimension: num_rmxpunto_vta_fac {
    type: number
    sql: ${TABLE}.NumRMXPuntoVtaFac ;;
  }

  dimension: num_xpunto_vta_fac {
    type: number
    sql: ${TABLE}.NumXPuntoVtaFac ;;
  }

  dimension: numero_punto_vta_fac {
    type: number
    sql: ${TABLE}.NumeroPuntoVtaFac ;;
  }

  dimension: puerto_serie_punto_vta_fac {
    type: number
    sql: ${TABLE}.PuertoSeriePuntoVtaFac ;;
  }

  dimension: tipo_impresion_punto_vta_fac {
    type: number
    sql: ${TABLE}.TipoImpresionPuntoVtaFac ;;
  }
  measure: count {
    type: count
  }
}
