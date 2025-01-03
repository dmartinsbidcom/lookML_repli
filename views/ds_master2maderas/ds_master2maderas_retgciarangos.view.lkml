# The name of this view in Looker is "Ds Master2maderas Retgciarangos"
view: ds_master2maderas_retgciarangos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2maderas.retgciarangos` ;;

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

  dimension: hasta_ret_gcia_rangos {
    type: number
    sql: ${TABLE}.HastaRetGciaRangos ;;
  }

  dimension: id_ret_gcia_actividad {
    type: number
    sql: ${TABLE}.idRetGciaActividad ;;
  }

  dimension: id_ret_gcia_rango {
    type: number
    sql: ${TABLE}.idRetGciaRango ;;
  }

  dimension: importe_fijo_ret_gcia_rangos {
    type: number
    sql: ${TABLE}.ImporteFijoRetGciaRangos ;;
  }

  dimension: mas_de_ret_gcia_rangos {
    type: number
    sql: ${TABLE}.MasDeRetGciaRangos ;;
  }

  dimension: porcentaje_ret_gcia_rangos {
    type: number
    sql: ${TABLE}.PorcentajeRetGciaRangos ;;
  }

  dimension: sobre_excedente_ret_gcia_rangos {
    type: number
    sql: ${TABLE}.SobreExcedenteRetGciaRangos ;;
  }
  measure: count {
    type: count
  }
}