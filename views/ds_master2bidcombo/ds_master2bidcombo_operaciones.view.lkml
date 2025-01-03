# The name of this view in Looker is "Ds Master2bidcombo Operaciones"
view: ds_master2bidcombo_operaciones {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bidcombo.operaciones` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Corresponde Aenvio Operacion" in Explore.

  dimension: corresponde_aenvio_operacion {
    type: number
    sql: ${TABLE}.correspondeAEnvioOperacion ;;
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

  dimension: es_mayorista_operacion {
    type: number
    sql: ${TABLE}.esMayoristaOperacion ;;
  }

  dimension: habilitada_para_despachos_operacion {
    type: number
    sql: ${TABLE}.habilitadaParaDespachosOperacion ;;
  }

  dimension: habilitada_para_stoperacion {
    type: number
    sql: ${TABLE}.habilitadaParaSTOperacion ;;
  }

  dimension: id_deposito_destino {
    type: number
    sql: ${TABLE}.idDepositoDestino ;;
  }

  dimension: id_deposito_origen {
    type: number
    sql: ${TABLE}.idDepositoOrigen ;;
  }

  dimension: id_operacion {
    type: number
    sql: ${TABLE}.idOperacion ;;
  }

  dimension: id_operacion_comprobante {
    type: number
    sql: ${TABLE}.idOperacionComprobante ;;
  }

  dimension: id_operacion_tipo {
    type: number
    sql: ${TABLE}.idOperacionTipo ;;
  }

  dimension: id_pv {
    type: number
    sql: ${TABLE}.idPV ;;
  }

  dimension: nombre_operacion {
    type: string
    sql: ${TABLE}.nombreOperacion ;;
  }

  dimension: permite_cambiar_depositos_operacion {
    type: number
    sql: ${TABLE}.permiteCambiarDepositosOperacion ;;
  }

  dimension: tipo_comprobante_externo {
    type: string
    sql: ${TABLE}.tipoComprobanteExterno ;;
  }
  measure: count {
    type: count
  }
}
