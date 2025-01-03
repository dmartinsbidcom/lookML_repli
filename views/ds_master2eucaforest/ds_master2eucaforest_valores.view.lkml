# The name of this view in Looker is "Ds Master2eucaforest Valores"
view: ds_master2eucaforest_valores {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2eucaforest.valores` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo Pctas1" in Explore.

  dimension: codigo_pctas1 {
    type: string
    sql: ${TABLE}.CodigoPCtas1 ;;
  }

  dimension: codigo_pctas2 {
    type: string
    sql: ${TABLE}.CodigoPCtas2 ;;
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

  dimension: echeqvalor {
    type: number
    sql: ${TABLE}.echeqvalor ;;
  }

  dimension: id_moneda {
    type: number
    sql: ${TABLE}.IdMoneda ;;
  }

  dimension: id_valor {
    type: number
    sql: ${TABLE}.IdValor ;;
  }

  dimension: idtbbanco {
    type: number
    sql: ${TABLE}.idtbbanco ;;
  }

  dimension: nombre_valor {
    type: string
    sql: ${TABLE}.NombreValor ;;
  }

  dimension: tipo_valor {
    type: string
    sql: ${TABLE}.TipoValor ;;
  }
  measure: count {
    type: count
  }
}
