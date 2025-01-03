# The name of this view in Looker is "Ds Master2empresas Numeradores"
view: ds_master2empresas_numeradores {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2empresas.numeradores` ;;

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

  dimension: fvto_cainumerador {
    type: number
    sql: ${TABLE}.FVtoCAINumerador ;;
  }

  dimension: id_numerador {
    type: number
    sql: ${TABLE}.IdNumerador ;;
  }

  dimension: nombre_numerador {
    type: string
    sql: ${TABLE}.NombreNumerador ;;
  }

  dimension: proximo_numerador {
    type: number
    sql: ${TABLE}.ProximoNumerador ;;
  }

  dimension: pvnumerador {
    type: number
    sql: ${TABLE}.PVNumerador ;;
  }
  measure: count {
    type: count
  }
}
