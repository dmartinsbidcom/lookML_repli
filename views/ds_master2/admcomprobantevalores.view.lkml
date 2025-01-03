# The name of this view in Looker is "Admcomprobantevalores"
view: admcomprobantevalores {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2.admcomprobantevalores` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cambiocomprobantevalor" in Explore.

  dimension: cambiocomprobantevalor {
    type: number
    sql: ${TABLE}.cambiocomprobantevalor ;;
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

  dimension: idcomprobante {
    type: number
    sql: ${TABLE}.idcomprobante ;;
  }

  dimension: idmoneda {
    type: number
    sql: ${TABLE}.idmoneda ;;
  }

  dimension: impintcomprobantevalor {
    type: number
    sql: ${TABLE}.impintcomprobantevalor ;;
  }

  dimension: ivacomprobantevalor {
    type: number
    sql: ${TABLE}.ivacomprobantevalor ;;
  }

  dimension: neto0comprobantevalor {
    type: number
    sql: ${TABLE}.neto0comprobantevalor ;;
  }

  dimension: neto105comprobantevalor {
    type: number
    sql: ${TABLE}.neto105comprobantevalor ;;
  }

  dimension: neto21comprobantevalor {
    type: number
    sql: ${TABLE}.neto21comprobantevalor ;;
  }

  dimension: perc901comprobantevalor {
    type: number
    sql: ${TABLE}.perc901comprobantevalor ;;
  }

  dimension: perc902comprobantevalor {
    type: number
    sql: ${TABLE}.perc902comprobantevalor ;;
  }

  dimension: perc914comprobantevalor {
    type: number
    sql: ${TABLE}.perc914comprobantevalor ;;
  }

  dimension: perc921comprobantevalor {
    type: number
    sql: ${TABLE}.perc921comprobantevalor ;;
  }

  dimension: porc901comprobantevalor {
    type: number
    sql: ${TABLE}.porc901comprobantevalor ;;
  }

  dimension: porc902comprobantevalor {
    type: number
    sql: ${TABLE}.porc902comprobantevalor ;;
  }

  dimension: porc914comprobantevalor {
    type: number
    sql: ${TABLE}.porc914comprobantevalor ;;
  }

  dimension: porc921comprobantevalor {
    type: number
    sql: ${TABLE}.porc921comprobantevalor ;;
  }
  measure: count {
    type: count
  }
}
