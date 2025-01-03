# The name of this view in Looker is "Ds Master2calitec Empresas"
view: ds_master2calitec_empresas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2calitec.empresas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Actividad Principal Empresa" in Explore.

  dimension: actividad_principal_empresa {
    type: string
    sql: ${TABLE}.ActividadPrincipalEmpresa ;;
  }

  dimension: cli_pro_empresa {
    type: number
    sql: ${TABLE}.CliProEmpresa ;;
  }

  dimension: codigo_sujeto_vinculado_empresa {
    type: number
    sql: ${TABLE}.CodigoSujetoVinculadoEmpresa ;;
  }

  dimension: cond_ivaempresa {
    type: string
    sql: ${TABLE}.CondIVAEmpresa ;;
  }

  dimension: cuenta_contable_empresa {
    type: string
    sql: ${TABLE}.CuentaContableEmpresa ;;
  }

  dimension: cuitempresa {
    type: string
    sql: ${TABLE}.CUITEmpresa ;;
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

  dimension: descuento_global_vta_empresa {
    type: number
    sql: ${TABLE}.DescuentoGlobalVtaEmpresa ;;
  }

  dimension: dias_entrega_empresa {
    type: number
    sql: ${TABLE}.DiasEntregaEmpresa ;;
  }

  dimension: e_mail_empresa {
    type: string
    sql: ${TABLE}.eMailEmpresa ;;
  }

  dimension: estado_civil_empresa {
    type: number
    sql: ${TABLE}.EstadoCivilEmpresa ;;
  }

  dimension: fecha_nacimiento_empresa {
    type: number
    sql: ${TABLE}.FechaNacimientoEmpresa ;;
  }

  dimension: id_cbuemisor {
    type: number
    sql: ${TABLE}.idCBUEmisor ;;
  }

  dimension: id_empresa {
    type: number
    sql: ${TABLE}.IdEmpresa ;;
  }

  dimension: id_empresa_rubro {
    type: number
    sql: ${TABLE}.idEmpresaRubro ;;
  }

  dimension: imprimr_resumen_siniestro_empresa {
    type: number
    sql: ${TABLE}.ImprimrResumenSiniestroEmpresa ;;
  }

  dimension: mi_py_meempresa {
    type: number
    sql: ${TABLE}.MiPyMEEmpresa ;;
  }

  dimension: nombre_fantasia_empresa {
    type: string
    sql: ${TABLE}.NombreFantasiaEmpresa ;;
  }

  dimension: nrodocexteriorempresa {
    type: string
    sql: ${TABLE}.nrodocexteriorempresa ;;
  }

  dimension: numero_iibbempresa {
    type: string
    sql: ${TABLE}.NumeroIIBBEmpresa ;;
  }

  dimension: objetivo_venta_empresa {
    type: number
    sql: ${TABLE}.ObjetivoVentaEmpresa ;;
  }

  dimension: pais_empresa {
    type: string
    sql: ${TABLE}.PaisEmpresa ;;
  }

  dimension: razon_social_empresa {
    type: string
    sql: ${TABLE}.RazonSocialEmpresa ;;
  }

  dimension: solo_ccempresa {
    type: number
    sql: ${TABLE}.SoloCCEmpresa ;;
  }

  dimension: sujetoaretencionempresa {
    type: number
    sql: ${TABLE}.sujetoaretencionempresa ;;
  }

  dimension: tcdb_empresa {
    type: number
    sql: ${TABLE}.TCDbEmpresa ;;
  }

  dimension: tcid_cc {
    type: number
    sql: ${TABLE}.TCidCC ;;
  }

  dimension: tcid_def_comprobante {
    type: number
    sql: ${TABLE}.TCidDefComprobante ;;
  }

  dimension: tcid_def_operacion {
    type: number
    sql: ${TABLE}.TCidDefOperacion ;;
  }

  dimension: tcid_empresa {
    type: number
    sql: ${TABLE}.TCidEmpresa ;;
  }

  dimension: tcid_rel_ccdomicilio {
    type: number
    sql: ${TABLE}.TCidRelCCDomicilio ;;
  }

  dimension: tipo_documento_empresa {
    type: number
    sql: ${TABLE}.TipoDocumentoEmpresa ;;
  }

  dimension: tipo_empresa {
    type: number
    sql: ${TABLE}.TipoEmpresa ;;
  }
  measure: count {
    type: count
  }
}
