# The name of this view in Looker is "Ds Master2calitec Formatoimpresioncoordenadas"
view: ds_master2calitec_formatoimpresioncoordenadas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2calitec.formatoimpresioncoordenadas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo Formato Coordenada" in Explore.

  dimension: codigo_formato_coordenada {
    type: number
    sql: ${TABLE}.CodigoFormatoCoordenada ;;
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

  dimension: id_formato {
    type: number
    sql: ${TABLE}.idFormato ;;
  }

  dimension: id_formato_campo {
    type: number
    sql: ${TABLE}.idFormatoCampo ;;
  }

  dimension: id_formato_coordenada {
    type: number
    sql: ${TABLE}.idFormatoCoordenada ;;
  }

  dimension: sformato_coordenada {
    type: number
    sql: ${TABLE}.SFormatoCoordenada ;;
  }

  dimension: xformato_coordenada {
    type: number
    sql: ${TABLE}.XFormatoCoordenada ;;
  }

  dimension: yformato_coordenada {
    type: number
    sql: ${TABLE}.YFormatoCoordenada ;;
  }
  measure: count {
    type: count
  }
}
