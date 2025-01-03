# The name of this view in Looker is "Ds Master2cabainnov Admretenciones"
view: ds_master2cabainnov_admretenciones {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2cabainnov.admretenciones` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cuitretencion" in Explore.

  dimension: cuitretencion {
    type: string
    sql: ${TABLE}.CUITRetencion ;;
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

  dimension: domicilio_retencion {
    type: string
    sql: ${TABLE}.DomicilioRetencion ;;
  }

  dimension: id_imputacion {
    type: number
    sql: ${TABLE}.idImputacion ;;
  }

  dimension: id_retencion {
    type: number
    sql: ${TABLE}.idRetencion ;;
  }

  dimension: neto_acum_periodo_retencion {
    type: number
    sql: ${TABLE}.NetoAcumPeriodoRetencion ;;
  }

  dimension: neto_retencion {
    type: number
    sql: ${TABLE}.NetoRetencion ;;
  }

  dimension: numero_retencion {
    type: number
    sql: ${TABLE}.NumeroRetencion ;;
  }

  dimension: porcentaje_retencion {
    type: number
    sql: ${TABLE}.PorcentajeRetencion ;;
  }

  dimension: razon_social_retencion {
    type: string
    sql: ${TABLE}.RazonSocialRetencion ;;
  }

  dimension: regimen_retencion {
    type: string
    sql: ${TABLE}.RegimenRetencion ;;
  }

  dimension: ret_acum_periodo_retencion {
    type: number
    sql: ${TABLE}.RetAcumPeriodoRetencion ;;
  }
  measure: count {
    type: count
  }
}
