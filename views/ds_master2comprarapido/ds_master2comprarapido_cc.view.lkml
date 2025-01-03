# The name of this view in Looker is "Ds Master2comprarapido Cc"
view: ds_master2comprarapido_cc {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2comprarapido.cc` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Autorizar Cc" in Explore.

  dimension: autorizar_cc {
    type: string
    sql: ${TABLE}.AutorizarCC ;;
  }

  dimension: clave_acceso_otro_aguila_cc {
    type: string
    sql: ${TABLE}.ClaveAccesoOtroAguilaCC ;;
  }

  dimension: cod_proveedor_cc {
    type: string
    sql: ${TABLE}.CodProveedorCC ;;
  }

  dimension: codigo_cc {
    type: number
    sql: ${TABLE}.CodigoCC ;;
  }

  dimension: coef_tcseguro_cc {
    type: number
    sql: ${TABLE}.CoefTCSeguroCC ;;
  }

  dimension: comentarios_cc {
    type: string
    sql: ${TABLE}.ComentariosCC ;;
  }

  dimension: como_calcula_vto_cc {
    type: number
    sql: ${TABLE}.ComoCalculaVtoCC ;;
  }

  dimension: cuit_transporte_cc {
    type: string
    sql: ${TABLE}.CuitTransporteCC ;;
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

  dimension: deposito_previo_cc {
    type: number
    sql: ${TABLE}.DepositoPrevioCC ;;
  }

  dimension: descuento1_cc {
    type: number
    sql: ${TABLE}.Descuento1CC ;;
  }

  dimension: descuento2_cc {
    type: number
    sql: ${TABLE}.Descuento2CC ;;
  }

  dimension: descuento3_cc {
    type: number
    sql: ${TABLE}.Descuento3CC ;;
  }

  dimension: domicilio_transporte_cc {
    type: string
    sql: ${TABLE}.DomicilioTransporteCC ;;
  }

  dimension: enviar_factura_en_txtx_mail_cc {
    type: number
    sql: ${TABLE}.EnviarFacturaEnTXTxMailCC ;;
  }

  dimension: exentoretgciacc {
    type: number
    sql: ${TABLE}.exentoretgciacc ;;
  }

  dimension: fecha_alta_cc {
    type: number
    sql: ${TABLE}.FechaAltaCC ;;
  }

  dimension: fecha_baja_cc {
    type: number
    sql: ${TABLE}.FechaBajaCC ;;
  }

  dimension: fechahastaexentoretgciacc {
    type: number
    sql: ${TABLE}.fechahastaexentoretgciacc ;;
  }

  dimension: id_adm_idioma {
    type: number
    sql: ${TABLE}.idAdmIdioma ;;
  }

  dimension: id_cc {
    type: number
    sql: ${TABLE}.IdCC ;;
  }

  dimension: id_ccsinc {
    type: number
    sql: ${TABLE}.idCCSinc ;;
  }

  dimension: id_cliente_asistencia {
    type: number
    sql: ${TABLE}.idClienteAsistencia ;;
  }

  dimension: id_cobrador {
    type: number
    sql: ${TABLE}.idCobrador ;;
  }

  dimension: id_def_cc {
    type: number
    sql: ${TABLE}.IdDefCC ;;
  }

  dimension: id_def_observaciones_enc {
    type: number
    sql: ${TABLE}.idDefObservacionesEnc ;;
  }

  dimension: id_moneda {
    type: number
    sql: ${TABLE}.idMoneda ;;
  }

  dimension: id_st_lista_precios {
    type: number
    sql: ${TABLE}.IdStListaPrecios ;;
  }

  dimension: id_tcrango {
    type: number
    sql: ${TABLE}.idTCRango ;;
  }

  dimension: id_transporte {
    type: number
    sql: ${TABLE}.IdTransporte ;;
  }

  dimension: id_usuario_alta_cc {
    type: number
    sql: ${TABLE}.IdUsuarioAltaCC ;;
  }

  dimension: id_usuario_bloqueo {
    type: number
    sql: ${TABLE}.idUsuarioBloqueo ;;
  }

  dimension: id_vendedor {
    type: number
    sql: ${TABLE}.IdVendedor ;;
  }

  dimension: id_zona {
    type: number
    sql: ${TABLE}.idZona ;;
  }

  dimension: importe_auxiliar_cc {
    type: number
    sql: ${TABLE}.ImporteAuxiliarCC ;;
  }

  dimension: inhabilitada_cc {
    type: number
    sql: ${TABLE}.InhabilitadaCC ;;
  }

  dimension: lim_cred_cc {
    type: number
    sql: ${TABLE}.LimCredCC ;;
  }

  dimension: no_aceptamos_cheque_cc {
    type: number
    sql: ${TABLE}.NoAceptamosChequeCC ;;
  }

  dimension: nombre_cc {
    type: string
    sql: ${TABLE}.NombreCC ;;
  }

  dimension: nombre_transporte_cc {
    type: string
    sql: ${TABLE}.NombreTransporteCC ;;
  }

  dimension: pide_boleto_cc {
    type: number
    sql: ${TABLE}.PideBoletoCC ;;
  }

  dimension: plazo_maximo_cc {
    type: number
    sql: ${TABLE}.PlazoMaximoCC ;;
  }

  dimension: porc_bonif_objetivo1_cc {
    type: number
    sql: ${TABLE}.PorcBonifObjetivo1CC ;;
  }

  dimension: porc_bonif_objetivo2_cc {
    type: number
    sql: ${TABLE}.PorcBonifObjetivo2CC ;;
  }

  dimension: porc_bonif_objetivo3_cc {
    type: number
    sql: ${TABLE}.PorcBonifObjetivo3CC ;;
  }

  dimension: proveedor_mbacc {
    type: number
    sql: ${TABLE}.proveedorMBACC ;;
  }

  dimension: reclamo_cobranza_cc {
    type: string
    sql: ${TABLE}.ReclamoCobranzaCC ;;
  }

  dimension: texto_aviso_facturacion_cc {
    type: string
    sql: ${TABLE}.TextoAvisoFacturacionCC ;;
  }

  dimension: texto_bloqueo_cc {
    type: string
    sql: ${TABLE}.TextoBloqueoCC ;;
  }
  measure: count {
    type: count
  }
}
