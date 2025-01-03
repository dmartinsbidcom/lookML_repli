# The name of this view in Looker is "Ds Presupuestos Despachos Remito"
view: ds_presupuestos_despachos_remito {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.despachos_remito` ;;

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

  dimension: despacho_medio {
    type: string
    sql: ${TABLE}.DespachoMedio ;;
  }

  dimension: estacion_id {
    type: number
    sql: ${TABLE}.Estacion_ID ;;
  }

  dimension: estacion_nombre {
    type: string
    sql: ${TABLE}.Estacion_Nombre ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_remito {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.Fecha_Remito ;;
  }

  dimension: id_despacho_medio_responsable {
    type: number
    sql: ${TABLE}.idDespachoMedioResponsable ;;
  }

  dimension: id_remito {
    type: number
    sql: ${TABLE}.idRemito ;;
  }

  dimension: id_usuario {
    type: number
    sql: ${TABLE}.idUsuario ;;
  }

  dimension: nombre_despacho_medio_responsable {
    type: string
    sql: ${TABLE}.nombreDespachoMedioResponsable ;;
  }

  dimension: nombre_usuario {
    type: string
    sql: ${TABLE}.nombreUsuario ;;
  }

  dimension: pc {
    type: string
    sql: ${TABLE}.PC ;;
  }
  measure: count {
    type: count
  }
}
