# The name of this view in Looker is "Ds Presupuestos Usuarios Sector Ubicacion"
view: ds_presupuestos_usuarios_sector_ubicacion {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.usuarios_sector_ubicacion` ;;

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

  dimension_group: fecha_update {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FechaUpdate ;;
  }

  dimension: id_usuario {
    type: number
    sql: ${TABLE}.idUsuario ;;
  }

  dimension: puesto {
    type: string
    sql: ${TABLE}.Puesto ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}.Sector ;;
  }

  dimension: supervisor {
    type: string
    sql: ${TABLE}.Supervisor ;;
  }

  dimension: ubicacion_fisica {
    type: string
    sql: ${TABLE}.UbicacionFisica ;;
  }

  dimension: vecino_1 {
    type: number
    sql: ${TABLE}.Vecino_1 ;;
  }

  dimension: vecino_2 {
    type: number
    sql: ${TABLE}.Vecino_2 ;;
  }
  measure: count {
    type: count
  }
}
