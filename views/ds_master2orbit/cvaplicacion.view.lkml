# The name of this view in Looker is "Cvaplicacion"
view: cvaplicacion {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2orbit.cvaplicacion` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Bin Tarjeta" in Explore.

  dimension: bin_tarjeta {
    type: string
    sql: ${TABLE}.BinTarjeta ;;
  }

  dimension: cod_autorizacion {
    type: string
    sql: ${TABLE}.CodAutorizacion ;;
  }

  dimension: cupon {
    type: string
    sql: ${TABLE}.Cupon ;;
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

  dimension: id_cvaper {
    type: number
    sql: ${TABLE}.idCVAper ;;
  }

  dimension: id_cvaplicacion {
    type: number
    sql: ${TABLE}.idCVAplicacion ;;
  }

  dimension: id_cvba_pro {
    type: number
    sql: ${TABLE}.idCVBaPro ;;
  }

  dimension: id_cvbna {
    type: number
    sql: ${TABLE}.idCVBNA ;;
  }

  dimension: id_cvclic {
    type: number
    sql: ${TABLE}.idCVClic ;;
  }

  dimension: id_cvpay_way {
    type: number
    sql: ${TABLE}.idCVPayWay ;;
  }

  dimension: id_fc_acomprobante {
    type: number
    sql: ${TABLE}.idFcAComprobante ;;
  }

  dimension: nro_operacion_pago {
    type: string
    sql: ${TABLE}.NroOperacionPago ;;
  }

  dimension: tipo_cvaplicacion {
    type: number
    sql: ${TABLE}.TipoCVAplicacion ;;
  }
  measure: count {
    type: count
  }
}
