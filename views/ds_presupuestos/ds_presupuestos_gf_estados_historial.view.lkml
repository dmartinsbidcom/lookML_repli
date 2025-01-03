# The name of this view in Looker is "Ds Presupuestos Gf Estados Historial"
view: ds_presupuestos_gf_estados_historial {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.gf_estados_historial` ;;

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
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_dgfestado_historial {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaDGFEstadoHistorial ;;
  }

  dimension: id_bo_pv_novedad {
    type: number
    sql: ${TABLE}.idBoPvNovedad ;;
  }

  dimension: id_gf {
    type: number
    sql: ${TABLE}.idGF ;;
  }

  dimension: id_gfestado_anterior {
    type: number
    sql: ${TABLE}.idGFEstado_Anterior ;;
  }

  dimension: id_gfestado_nuevo {
    type: number
    sql: ${TABLE}.idGFEstado_Nuevo ;;
  }

  dimension: id_usuario_alta_gfestado_historial {
    type: number
    sql: ${TABLE}.idUsuario_AltaGFEstadoHistorial ;;
  }
  measure: count {
    type: count
  }
}
