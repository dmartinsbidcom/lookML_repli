# The name of this view in Looker is "Ds Master2cabainnov Admchequesad"
view: ds_master2cabainnov_admchequesad {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2cabainnov.admchequesad` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cuit2 Titular Cheque Ad" in Explore.

  dimension: cuit2_titular_cheque_ad {
    type: string
    sql: ${TABLE}.Cuit2TitularChequeAD ;;
  }

  dimension: cuit3_titular_cheque_ad {
    type: string
    sql: ${TABLE}.Cuit3TitularChequeAD ;;
  }

  dimension: cuittitular {
    type: string
    sql: ${TABLE}.CUITTitular ;;
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

  dimension: en_cartera_cheque_ad {
    type: number
    sql: ${TABLE}.EnCarteraChequeAD ;;
  }

  dimension: femision_cheque_ad {
    type: number
    sql: ${TABLE}.FEmisionChequeAD ;;
  }

  dimension: fpago_cheque_ad {
    type: number
    sql: ${TABLE}.FPagoChequeAD ;;
  }

  dimension: id_cheque_ad {
    type: number
    sql: ${TABLE}.IdChequeAD ;;
  }

  dimension: id_imputacion {
    type: number
    sql: ${TABLE}.IdImputacion ;;
  }

  dimension: idtb_banco {
    type: number
    sql: ${TABLE}.IDtbBanco ;;
  }

  dimension: no_ala_orden_cheque_ad {
    type: number
    sql: ${TABLE}.NoALaOrdenChequeAD ;;
  }

  dimension: nombre_titular_cheques_ad {
    type: string
    sql: ${TABLE}.NombreTitularChequesAD ;;
  }

  dimension: nro_cuenta_cheques_ad {
    type: string
    sql: ${TABLE}.NroCuentaChequesAD ;;
  }

  dimension: nro_interno_cheque_ad {
    type: number
    sql: ${TABLE}.NroInternoChequeAD ;;
  }

  dimension: numero_cheque_ad {
    type: number
    sql: ${TABLE}.NumeroChequeAD ;;
  }

  dimension: suc_banco_cheque_ad {
    type: string
    sql: ${TABLE}.SucBancoChequeAD ;;
  }

  dimension: titular_cheque_ad {
    type: string
    sql: ${TABLE}.TitularChequeAD ;;
  }
  measure: count {
    type: count
  }
}
