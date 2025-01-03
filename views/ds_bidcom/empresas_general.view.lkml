# The name of this view in Looker is "Empresas General"
view: empresas_general {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_bidcom.empresas_general` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cuit Empresa" in Explore.

  dimension: cuit_empresa {
    type: string
    sql: ${TABLE}.cuitEmpresa ;;
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

  dimension: db_empresa {
    type: string
    sql: ${TABLE}.dbEmpresa ;;
  }

  dimension: domicilio_calle_empresa {
    type: string
    sql: ${TABLE}.domicilioCalleEmpresa ;;
  }

  dimension: domicilio_ciudad_empresa {
    type: string
    sql: ${TABLE}.domicilioCiudadEmpresa ;;
  }

  dimension: domicilio_codigo_postal_empresa {
    type: string
    sql: ${TABLE}.domicilioCodigoPostalEmpresa ;;
  }

  dimension: domicilio_dpto_empresa {
    type: string
    sql: ${TABLE}.domicilioDptoEmpresa ;;
  }

  dimension: domicilio_fiscal_calle_empresa {
    type: string
    sql: ${TABLE}.domicilioFiscalCalleEmpresa ;;
  }

  dimension: domicilio_fiscal_ciudad_empresa {
    type: string
    sql: ${TABLE}.domicilioFiscalCiudadEmpresa ;;
  }

  dimension: domicilio_fiscal_codigo_postal_empresa {
    type: string
    sql: ${TABLE}.domicilioFiscalCodigoPostalEmpresa ;;
  }

  dimension: domicilio_fiscal_dpto_empresa {
    type: string
    sql: ${TABLE}.domicilioFiscalDptoEmpresa ;;
  }

  dimension: domicilio_fiscal_numero_empresa {
    type: string
    sql: ${TABLE}.domicilioFiscalNumeroEmpresa ;;
  }

  dimension: domicilio_fiscal_piso_empresa {
    type: string
    sql: ${TABLE}.domicilioFiscalPisoEmpresa ;;
  }

  dimension: domicilio_fiscal_provincia_empresa {
    type: string
    sql: ${TABLE}.domicilioFiscalProvinciaEmpresa ;;
  }

  dimension: domicilio_numero_empresa {
    type: string
    sql: ${TABLE}.domicilioNumeroEmpresa ;;
  }

  dimension: domicilio_piso_empresa {
    type: string
    sql: ${TABLE}.domicilioPisoEmpresa ;;
  }

  dimension: domicilio_provincia_empresa {
    type: string
    sql: ${TABLE}.domicilioProvinciaEmpresa ;;
  }

  dimension: email_empresa {
    type: string
    sql: ${TABLE}.emailEmpresa ;;
  }

  dimension: entrega_garantias_empresa {
    type: number
    sql: ${TABLE}.entregaGarantiasEmpresa ;;
  }

  dimension: es_default_empresa {
    type: number
    sql: ${TABLE}.esDefaultEmpresa ;;
  }

  dimension: id_empresa {
    type: number
    sql: ${TABLE}.idEmpresa ;;
  }

  dimension: iibb_empresa {
    type: string
    sql: ${TABLE}.iibbEmpresa ;;
  }

  dimension: inicio_actividades_empresa {
    type: string
    sql: ${TABLE}.inicioActividadesEmpresa ;;
  }

  dimension: kodo_empresa {
    type: number
    sql: ${TABLE}.kodoEmpresa ;;
  }

  dimension: nombre_empresa {
    type: string
    sql: ${TABLE}.nombreEmpresa ;;
  }

  dimension: pv_empresa {
    type: string
    sql: ${TABLE}.pvEmpresa ;;
  }

  dimension: razon_social_empresa {
    type: string
    sql: ${TABLE}.razonSocialEmpresa ;;
  }

  dimension: telefono_empresa {
    type: string
    sql: ${TABLE}.telefonoEmpresa ;;
  }

  dimension: web_empresa {
    type: string
    sql: ${TABLE}.webEmpresa ;;
  }
  measure: count {
    type: count
  }
}
