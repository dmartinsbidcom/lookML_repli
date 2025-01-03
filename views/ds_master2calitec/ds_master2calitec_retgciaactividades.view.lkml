# The name of this view in Looker is "Ds Master2calitec Retgciaactividades"
view: ds_master2calitec_retgciaactividades {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2calitec.retgciaactividades` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigoregimenretgciaactividad" in Explore.

  dimension: codigoregimenretgciaactividad {
    type: number
    sql: ${TABLE}.codigoregimenretgciaactividad ;;
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

  dimension: id_ret_gcia_actividad {
    type: number
    sql: ${TABLE}.idRetGciaActividad ;;
  }

  dimension: monto_no_imponible_ret_gcia_actividad {
    type: number
    sql: ${TABLE}.MontoNoImponibleRetGciaActividad ;;
  }

  dimension: nombre_ret_gcia_actividad {
    type: string
    sql: ${TABLE}.NombreRetGciaActividad ;;
  }

  dimension: porcentaje_ret_gcia_actividad {
    type: number
    sql: ${TABLE}.PorcentajeRetGciaActividad ;;
  }

  dimension: utiliza_rangos_ret_gcia_actividad {
    type: number
    sql: ${TABLE}.UtilizaRangosRetGciaActividad ;;
  }
  measure: count {
    type: count
  }
}
