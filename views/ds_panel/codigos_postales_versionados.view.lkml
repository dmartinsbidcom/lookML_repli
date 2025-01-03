# The name of this view in Looker is "Codigos Postales Versionados"
view: codigos_postales_versionados {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.codigos_postales_versionados` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ciudad Editado" in Explore.

  dimension: ciudad_editado {
    type: string
    sql: ${TABLE}.ciudad_editado ;;
  }

  dimension: ciudad_editar {
    type: string
    sql: ${TABLE}.ciudad_editar ;;
  }

  dimension: cordon_editado {
    type: string
    sql: ${TABLE}.cordon_editado ;;
  }

  dimension: cordon_editar {
    type: string
    sql: ${TABLE}.cordon_editar ;;
  }

  dimension: cp_editado {
    type: number
    sql: ${TABLE}.cp_editado ;;
  }

  dimension: cp_editar {
    type: number
    sql: ${TABLE}.cp_editar ;;
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
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }

  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_registro ;;
  }

  dimension: habilitado_editado {
    type: string
    sql: ${TABLE}.habilitado_editado ;;
  }

  dimension: habilitado_editar {
    type: string
    sql: ${TABLE}.habilitado_editar ;;
  }

  dimension: hora_corte_editado {
    type: string
    sql: ${TABLE}.hora_corte_editado ;;
  }

  dimension: hora_corte_editar {
    type: string
    sql: ${TABLE}.hora_corte_editar ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: precio_editado {
    type: number
    sql: ${TABLE}.precio_editado ;;
  }

  dimension: precio_editar {
    type: number
    sql: ${TABLE}.precio_editar ;;
  }

  dimension: provincia_editado {
    type: string
    sql: ${TABLE}.provincia_editado ;;
  }

  dimension: provincia_editar {
    type: string
    sql: ${TABLE}.provincia_editar ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.user ;;
  }
  measure: count {
    type: count
  }
}
