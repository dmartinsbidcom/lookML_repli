# The name of this view in Looker is "Ds Master2bemotec Usuarios"
view: ds_master2bemotec_usuarios {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bemotec.usuarios` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Administrador Web Usuario" in Explore.

  dimension: administrador_web_usuario {
    type: number
    sql: ${TABLE}.AdministradorWebUsuario ;;
  }

  dimension: ancho_columna2_cons_prod_usuario {
    type: string
    sql: ${TABLE}.AnchoColumna2ConsProdUsuario ;;
  }

  dimension: ancho_columna_cons_prod_nueva_usuario {
    type: string
    sql: ${TABLE}.AnchoColumnaConsProdNuevaUsuario ;;
  }

  dimension: ancho_columna_cons_prod_usuario {
    type: string
    sql: ${TABLE}.AnchoColumnaConsProdUsuario ;;
  }

  dimension: autoriza_ocp_varios_usuario {
    type: number
    sql: ${TABLE}.AutorizaOCpVariosUsuario ;;
  }

  dimension: celular_usuario {
    type: string
    sql: ${TABLE}.CelularUsuario ;;
  }

  dimension: clave {
    type: string
    sql: ${TABLE}.Clave ;;
  }

  dimension: codigo_usuario {
    type: number
    sql: ${TABLE}.CodigoUsuario ;;
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

  dimension: desde_fcarga_usuario {
    type: number
    sql: ${TABLE}.DesdeFCargaUsuario ;;
  }

  dimension: dias_desde_fcarga_usuario {
    type: number
    sql: ${TABLE}.DiasDesdeFCargaUsuario ;;
  }

  dimension: dias_hasta_fcarga_usuario {
    type: number
    sql: ${TABLE}.DiasHastaFCargaUsuario ;;
  }

  dimension: e_mail_usuario {
    type: string
    sql: ${TABLE}.eMailUsuario ;;
  }

  dimension: es_administracion {
    type: number
    sql: ${TABLE}.EsAdministracion ;;
  }

  dimension: es_administrativo_usuario {
    type: number
    sql: ${TABLE}.EsAdministrativoUsuario ;;
  }

  dimension: es_cobrador_usuariuo {
    type: number
    sql: ${TABLE}.EsCobradorUsuariuo ;;
  }

  dimension: es_facturacion {
    type: number
    sql: ${TABLE}.EsFacturacion ;;
  }

  dimension: es_gerencia {
    type: number
    sql: ${TABLE}.EsGerencia ;;
  }

  dimension: es_pagos {
    type: number
    sql: ${TABLE}.EsPagos ;;
  }

  dimension: es_repuestos {
    type: number
    sql: ${TABLE}.EsRepuestos ;;
  }

  dimension: es_taller {
    type: number
    sql: ${TABLE}.EsTaller ;;
  }

  dimension: es_transporte {
    type: number
    sql: ${TABLE}.EsTransporte ;;
  }

  dimension: fc_desc_maximo_usuario {
    type: number
    sql: ${TABLE}.FcDescMaximoUsuario ;;
  }

  dimension: fc_mod_precio_usuario {
    type: number
    sql: ${TABLE}.FcModPrecioUsuario ;;
  }

  dimension: fc_solo_aumenta_usuario {
    type: number
    sql: ${TABLE}.FcSoloAumentaUsuario ;;
  }

  dimension: fecha_acepta_terminos_usuario {
    type: number
    sql: ${TABLE}.FechaAceptaTerminosUsuario ;;
  }

  dimension: graba_consulta_productos_usuario {
    type: number
    sql: ${TABLE}.GrabaConsultaProductosUsuario ;;
  }

  dimension: hasta_fcarga_usuario {
    type: number
    sql: ${TABLE}.HastaFCargaUsuario ;;
  }

  dimension: id_caja {
    type: number
    sql: ${TABLE}.IdCaja ;;
  }

  dimension: id_cuenta_de_mail {
    type: number
    sql: ${TABLE}.idCuentaDeMail ;;
  }

  dimension: id_rel_caja_valor_cobranza {
    type: number
    sql: ${TABLE}.idRelCajaValorCobranza ;;
  }

  dimension: id_st_deposito {
    type: number
    sql: ${TABLE}.IdStDeposito ;;
  }

  dimension: id_sucursal_un_boleto {
    type: number
    sql: ${TABLE}.idSucursalUnBoleto ;;
  }

  dimension: id_ta_taller {
    type: number
    sql: ${TABLE}.idTaTaller ;;
  }

  dimension: id_un {
    type: number
    sql: ${TABLE}.IdUN ;;
  }

  dimension: id_usuario_sinc {
    type: number
    sql: ${TABLE}.idUsuarioSinc ;;
  }

  dimension: idusuario {
    type: number
    sql: ${TABLE}.IDUsuario ;;
  }

  dimension: imagen_firma_mail_usuario {
    type: string
    sql: ${TABLE}.ImagenFirmaMailUsuario ;;
  }

  dimension: inicia_con_unpredeterminada_usuario {
    type: number
    sql: ${TABLE}.IniciaConUNPredeterminadaUsuario ;;
  }

  dimension: interno_usuario {
    type: string
    sql: ${TABLE}.InternoUsuario ;;
  }

  dimension: menu_completo_usuario {
    type: number
    sql: ${TABLE}.MenuCompletoUsuario ;;
  }

  dimension: modifica_otros_usuarios_usuario {
    type: number
    sql: ${TABLE}.ModificaOtrosUsuariosUsuario ;;
  }

  dimension: nivel_usuario {
    type: number
    sql: ${TABLE}.NivelUsuario ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  dimension: nombrecompletousuario {
    type: string
    sql: ${TABLE}.nombrecompletousuario ;;
  }

  dimension: numero_color_tablas_usuario {
    type: number
    sql: ${TABLE}.NumeroColorTablasUsuario ;;
  }

  dimension: numero_color_text_box_usuario {
    type: number
    sql: ${TABLE}.NumeroColorTextBoxUsuario ;;
  }

  dimension: orden_columnas_cons_prod_nueva_usuario {
    type: string
    sql: ${TABLE}.OrdenColumnasConsProdNuevaUsuario ;;
  }

  dimension: orden_columnas_cons_prod_usuario {
    type: string
    sql: ${TABLE}.OrdenColumnasConsProdUsuario ;;
  }

  dimension: permisos_especiales1_usuario {
    type: string
    sql: ${TABLE}.PermisosEspeciales1Usuario ;;
  }

  dimension: permite_compras20_dias_antes_usuario {
    type: number
    sql: ${TABLE}.PermiteCompras20DiasAntesUsuario ;;
  }

  dimension: porcentaje_comision_usuario {
    type: number
    sql: ${TABLE}.PorcentajeComisionUsuario ;;
  }

  dimension: sector_usuario {
    type: string
    sql: ${TABLE}.SectorUsuario ;;
  }

  dimension: st_lista_precios_usuario {
    type: number
    sql: ${TABLE}.StListaPreciosUsuario ;;
  }

  dimension: st_prepara_pedidos_vta_usuario {
    type: number
    sql: ${TABLE}.StPreparaPedidosVtaUsuario ;;
  }

  dimension: st_vendedor {
    type: number
    sql: ${TABLE}.StVendedor ;;
  }

  dimension: tareas_de_soporte_usuario {
    type: string
    sql: ${TABLE}.TareasDeSoporteUsuario ;;
  }

  dimension: texto_firma_mail_usuario {
    type: string
    sql: ${TABLE}.TextoFirmaMailUsuario ;;
  }

  dimension: ultimo_id_novedad_avisado_usuario {
    type: number
    sql: ${TABLE}.UltimoIdNovedadAvisadoUsuario ;;
  }

  dimension: uuidusuario {
    type: string
    sql: ${TABLE}.UUIDusuario ;;
  }

  dimension: valida_terminos_usuario {
    type: number
    sql: ${TABLE}.ValidaTerminosUsuario ;;
  }

  dimension: valores_xdefecto_usuario {
    type: string
    sql: ${TABLE}.ValoresXDefectoUsuario ;;
  }

  dimension: verifica_saldo_soporte {
    type: number
    sql: ${TABLE}.verificaSaldoSoporte ;;
  }

  dimension: zona_venta_usuario {
    type: string
    sql: ${TABLE}.zonaVentaUsuario ;;
  }
  measure: count {
    type: count
  }
}
