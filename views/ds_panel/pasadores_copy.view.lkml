# The name of this view in Looker is "Pasadores Copy"
view: pasadores_copy {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.pasadores_copy` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Activo" in Explore.

  dimension: activo {
    type: number
    sql: ${TABLE}.activo ;;
  }

  dimension: aplicados {
    type: string
    sql: ${TABLE}.aplicados ;;
  }

  dimension: aplicar_boton {
    type: string
    sql: ${TABLE}.aplicar_boton ;;
  }

  dimension: color_boton {
    type: string
    sql: ${TABLE}.color_boton ;;
  }

  dimension: compartido_con {
    type: string
    sql: ${TABLE}.compartido_con ;;
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

  dimension_group: fecha_fin {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_fin ;;
  }

  dimension_group: fecha_inicio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_inicio ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: imagen {
    type: string
    sql: ${TABLE}.imagen ;;
  }

  dimension: nombre_categorias {
    type: string
    sql: ${TABLE}.nombre_categorias ;;
  }

  dimension: orden_bidcom {
    type: number
    sql: ${TABLE}.orden_bidcom ;;
  }

  dimension: orden_gadnic {
    type: number
    sql: ${TABLE}.orden_gadnic ;;
  }

  dimension: orientacion {
    type: string
    sql: ${TABLE}.orientacion ;;
  }

  dimension: posicion_boton {
    type: string
    sql: ${TABLE}.posicion_boton ;;
  }

  dimension: seleccionados {
    type: string
    sql: ${TABLE}.seleccionados ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  dimension: titulo {
    type: string
    sql: ${TABLE}.titulo ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: web {
    type: string
    sql: ${TABLE}.web ;;
  }
  measure: count {
    type: count
  }
}
