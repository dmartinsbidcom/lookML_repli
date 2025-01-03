# The name of this view in Looker is "Banner Tmp"
view: banner_tmp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.banner_tmp` ;;

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

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: exclusivo {
    type: number
    sql: ${TABLE}.exclusivo ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_fin {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_fin ;;
  }

  dimension_group: fecha_inicio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_inicio ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: imagen_desktop {
    type: string
    sql: ${TABLE}.imagen_desktop ;;
  }

  dimension: imagen_mobile {
    type: string
    sql: ${TABLE}.imagen_mobile ;;
  }

  dimension: orden {
    type: number
    sql: ${TABLE}.orden ;;
  }

  dimension: sitio {
    type: string
    sql: ${TABLE}.sitio ;;
  }

  dimension: te_lleva_a {
    type: string
    sql: ${TABLE}.te_lleva_a ;;
  }

  dimension: te_lleva_a_marca {
    type: string
    sql: ${TABLE}.te_lleva_a_marca ;;
  }

  dimension: te_lleva_a_tipo {
    type: string
    sql: ${TABLE}.te_lleva_a_tipo ;;
  }

  dimension: titulo {
    type: string
    sql: ${TABLE}.titulo ;;
  }

  dimension: ubicacion_marca {
    type: string
    sql: ${TABLE}.ubicacion_marca ;;
  }

  dimension: ubicacion_posicion {
    type: string
    sql: ${TABLE}.ubicacion_posicion ;;
  }

  dimension: ubicacion_tipo {
    type: string
    sql: ${TABLE}.ubicacion_tipo ;;
  }
  measure: count {
    type: count
  }
}
