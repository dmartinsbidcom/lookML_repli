# The name of this view in Looker is "Ds Master2empresas Admcomprobantesmasdatos"
view: ds_master2empresas_admcomprobantesmasdatos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2empresas.admcomprobantesmasdatos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Asunto Mail Mas Datos" in Explore.

  dimension: asunto_mail_mas_datos {
    type: string
    sql: ${TABLE}.AsuntoMailMasDatos ;;
  }

  dimension: comp_asociado_fecha_mas_datos {
    type: number
    sql: ${TABLE}.CompAsociadoFechaMasDatos ;;
  }

  dimension: comp_asociado_fecha_vto_mas_datos {
    type: number
    sql: ${TABLE}.CompAsociadoFechaVtoMasDatos ;;
  }

  dimension: comp_asociado_numero_mas_datos {
    type: number
    sql: ${TABLE}.CompAsociadoNumeroMasDatos ;;
  }

  dimension: comp_asociado_pendiente_mas_datos {
    type: number
    sql: ${TABLE}.CompAsociadoPendienteMasDatos ;;
  }

  dimension: comp_asociado_pvmas_datos {
    type: number
    sql: ${TABLE}.CompAsociadoPVMasDatos ;;
  }

  dimension: comp_rel_matute1_mas_datos {
    type: string
    sql: ${TABLE}.CompRelMatute1MasDatos ;;
  }

  dimension: comp_rel_matute2_mas_datos {
    type: string
    sql: ${TABLE}.CompRelMatute2MasDatos ;;
  }

  dimension: cpmas_datos {
    type: string
    sql: ${TABLE}.CPMasDatos ;;
  }

  dimension: cuittransporte_mas_datos {
    type: string
    sql: ${TABLE}.CUITTransporteMasDatos ;;
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

  dimension: dest_domicilio_mas_datos {
    type: string
    sql: ${TABLE}.DestDomicilioMasDatos ;;
  }

  dimension: dest_localidad_mas_datos {
    type: string
    sql: ${TABLE}.DestLocalidadMasDatos ;;
  }

  dimension: dest_nombre_mas_datos {
    type: string
    sql: ${TABLE}.DestNombreMasDatos ;;
  }

  dimension: dest_provincia_mas_datos {
    type: string
    sql: ${TABLE}.DestProvinciaMasDatos ;;
  }

  dimension: dest_telefono_mas_datos {
    type: string
    sql: ${TABLE}.DestTelefonoMasDatos ;;
  }

  dimension: domicilio_transporte_mas_datos {
    type: string
    sql: ${TABLE}.DomicilioTransporteMasDatos ;;
  }

  dimension: e_mail_mas_datos {
    type: string
    sql: ${TABLE}.eMailMasDatos ;;
  }

  dimension: id_adm_idioma {
    type: number
    sql: ${TABLE}.idAdmIdioma ;;
  }

  dimension: id_cbuemisor {
    type: number
    sql: ${TABLE}.idCBUEmisor ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.IdComprobante ;;
  }

  dimension: id_comprobante_mas_datos {
    type: number
    sql: ${TABLE}.IdComprobanteMasDatos ;;
  }

  dimension: id_cotviaje {
    type: number
    sql: ${TABLE}.idCOTViaje ;;
  }

  dimension: id_domicilio_sucursal {
    type: number
    sql: ${TABLE}.idDomicilioSucursal ;;
  }

  dimension: id_expediente {
    type: number
    sql: ${TABLE}.idExpediente ;;
  }

  dimension: id_moneda {
    type: number
    sql: ${TABLE}.idMoneda ;;
  }

  dimension: id_tc_sector {
    type: number
    sql: ${TABLE}.idTcSector ;;
  }

  dimension: id_un_par_ct {
    type: number
    sql: ${TABLE}.idUnParCt ;;
  }

  dimension: importe_rel_comprobante_expediente {
    type: number
    sql: ${TABLE}.ImporteRelComprobanteExpediente ;;
  }

  dimension: imprime_al_obtener_caemas_datos {
    type: string
    sql: ${TABLE}.ImprimeAlObtenerCAEMasDatos ;;
  }

  dimension: nombre_transporte_mas_datos {
    type: string
    sql: ${TABLE}.NombreTransporteMasDatos ;;
  }

  dimension: nro_expediente_mas_datos {
    type: string
    sql: ${TABLE}.NroExpedienteMasDatos ;;
  }

  dimension: nro_siniestro_mas_datos {
    type: string
    sql: ${TABLE}.NroSiniestroMasDatos ;;
  }

  dimension: numero_remito_mas_datos {
    type: number
    sql: ${TABLE}.NumeroRemitoMasDatos ;;
  }

  dimension: numero_tcpedido {
    type: number
    sql: ${TABLE}.NumeroTCPedido ;;
  }

  dimension: ord_cp_mas_datos {
    type: string
    sql: ${TABLE}.OrdCpMasDatos ;;
  }

  dimension: peso_declarado_mas_datos {
    type: number
    sql: ${TABLE}.PesoDeclaradoMasDatos ;;
  }

  dimension: telefonos_mas_datos {
    type: string
    sql: ${TABLE}.TelefonosMasDatos ;;
  }

  dimension: unidad_mas_datos {
    type: string
    sql: ${TABLE}.UnidadMasDatos ;;
  }

  dimension: usuario_mlmas_datos {
    type: string
    sql: ${TABLE}.UsuarioMLMasDatos ;;
  }

  dimension: valor_declarado_mas_datos {
    type: number
    sql: ${TABLE}.ValorDeclaradoMasDatos ;;
  }

  dimension: vultos_mas_datos {
    type: number
    sql: ${TABLE}.VultosMasDatos ;;
  }
  measure: count {
    type: count
  }
}
