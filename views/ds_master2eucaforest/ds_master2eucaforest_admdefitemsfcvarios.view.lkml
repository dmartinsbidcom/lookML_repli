# The name of this view in Looker is "Ds Master2eucaforest Admdefitemsfcvarios"
view: ds_master2eucaforest_admdefitemsfcvarios {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2eucaforest.admdefitemsfcvarios` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cod Jurisdiccion Item Fc Varios" in Explore.

  dimension: cod_jurisdiccion_item_fc_varios {
    type: number
    sql: ${TABLE}.CodJurisdiccionItemFcVarios ;;
  }

  dimension: codigo_item_fc_varios {
    type: string
    sql: ${TABLE}.CodigoItemFcVarios ;;
  }

  dimension: codigo_pctas {
    type: string
    sql: ${TABLE}.CodigoPCtas ;;
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

  dimension: descripcion_item_fc_varios {
    type: string
    sql: ${TABLE}.DescripcionItemFcVarios ;;
  }

  dimension: es_cheque_rechazado_item_fc_varios {
    type: number
    sql: ${TABLE}.EsChequeRechazadoItemFcVarios ;;
  }

  dimension: id_item_fc_varios {
    type: number
    sql: ${TABLE}.IdItemFcVarios ;;
  }

  dimension: id_item_fc_varios_sinc {
    type: number
    sql: ${TABLE}.IdItemFcVariosSinc ;;
  }

  dimension: id_moneda {
    type: number
    sql: ${TABLE}.idMoneda ;;
  }

  dimension: precio_venta_item_fc_varios {
    type: number
    sql: ${TABLE}.PrecioVentaItemFcVarios ;;
  }

  dimension: tasa_ivaitem_fc_varios {
    type: number
    sql: ${TABLE}.TasaIVAItemFcVarios ;;
  }
  measure: count {
    type: count
  }
}
