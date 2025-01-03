# The name of this view in Looker is "Ds Presupuestos Prefijos Telefonicos"
view: ds_presupuestos_prefijos_telefonicos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.prefijos_telefonicos` ;;

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

  dimension_group: fecha_modifico_prefijo_telefonico {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaModificoPrefijoTelefonico ;;
  }

  dimension: id_prefijo_telefonico {
    type: number
    sql: ${TABLE}.idPrefijoTelefonico ;;
  }

  dimension: id_usuario_modifico_prefijo_telefonico {
    type: number
    sql: ${TABLE}.idUsuario_ModificoPrefijoTelefonico ;;
  }

  dimension: nombre_localidad_prefijo_telefonico {
    type: string
    sql: ${TABLE}.nombreLocalidadPrefijoTelefonico ;;
  }

  dimension: numero_prefijo_telefonico {
    type: string
    sql: ${TABLE}.numeroPrefijoTelefonico ;;
  }
  measure: count {
    type: count
  }
}
