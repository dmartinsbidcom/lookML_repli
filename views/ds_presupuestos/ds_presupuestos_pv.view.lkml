# The name of this view in Looker is "Ds Presupuestos Pv"
view: ds_presupuestos_pv {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.pv` ;;

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

  dimension: id_empresa {
    type: number
    sql: ${TABLE}.idEmpresa ;;
  }

  dimension: id_pv {
    type: number
    sql: ${TABLE}.idPV ;;
  }

  dimension: numero_pv {
    type: number
    sql: ${TABLE}.numeroPV ;;
  }

  dimension: proximo_admx {
    type: number
    sql: ${TABLE}.proximoADMX ;;
  }

  dimension: proximo_camg {
    type: number
    sql: ${TABLE}.proximoCAMG ;;
  }

  dimension: proximo_camx {
    type: number
    sql: ${TABLE}.proximoCAMX ;;
  }

  dimension: proximo_comx {
    type: number
    sql: ${TABLE}.proximoCOMX ;;
  }

  dimension: proximo_faca {
    type: number
    sql: ${TABLE}.proximoFACA ;;
  }

  dimension: proximo_facb {
    type: number
    sql: ${TABLE}.proximoFACB ;;
  }

  dimension: proximo_facc {
    type: number
    sql: ${TABLE}.proximoFACC ;;
  }

  dimension: proximo_facg {
    type: number
    sql: ${TABLE}.proximoFACG ;;
  }

  dimension: proximo_nca {
    type: number
    sql: ${TABLE}.proximoNCA ;;
  }

  dimension: proximo_ncb {
    type: number
    sql: ${TABLE}.proximoNCB ;;
  }

  dimension: proximo_ncc {
    type: number
    sql: ${TABLE}.proximoNCC ;;
  }

  dimension: proximo_ncg {
    type: number
    sql: ${TABLE}.proximoNCG ;;
  }

  dimension: proximo_nda {
    type: number
    sql: ${TABLE}.proximoNDA ;;
  }

  dimension: proximo_ndb {
    type: number
    sql: ${TABLE}.proximoNDB ;;
  }

  dimension: proximo_ndc {
    type: number
    sql: ${TABLE}.proximoNDC ;;
  }

  dimension: proximo_ndg {
    type: number
    sql: ${TABLE}.proximoNDG ;;
  }

  dimension: proximo_stkx {
    type: number
    sql: ${TABLE}.proximoSTKX ;;
  }

  dimension: proximo_stx {
    type: number
    sql: ${TABLE}.proximoSTX ;;
  }
  measure: count {
    type: count
  }
}
