# The name of this view in Looker is "Terms"
view: terms {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_bidcom.terms` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Columna" in Explore.

  dimension: columna {
    type: number
    sql: ${TABLE}.columna ;;
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

  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: descripcion_gadnic {
    type: string
    sql: ${TABLE}.descripcion_gadnic ;;
  }

  dimension: descripcion_meta {
    type: string
    sql: ${TABLE}.descripcion_meta ;;
  }

  dimension: descripcion_meta_gadnic {
    type: string
    sql: ${TABLE}.descripcion_meta_gadnic ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_modificacion ;;
  }

  dimension: id_google {
    type: number
    sql: ${TABLE}.id_google ;;
  }

  dimension: id_ml {
    type: string
    sql: ${TABLE}.id_ml ;;
  }

  dimension: imagen {
    type: string
    sql: ${TABLE}.imagen ;;
  }

  dimension: introduccion {
    type: string
    sql: ${TABLE}.introduccion ;;
  }

  dimension: item_menu {
    type: number
    sql: ${TABLE}.item_menu ;;
  }

  dimension: item_menu_orden {
    type: number
    sql: ${TABLE}.item_menu_orden ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: orden {
    type: number
    sql: ${TABLE}.orden ;;
  }

  dimension: questions_answer {
    type: string
    sql: ${TABLE}.questions_answer ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: term_id {
    type: number
    sql: ${TABLE}.term_id ;;
  }

  dimension: titulo {
    type: string
    sql: ${TABLE}.titulo ;;
  }

  dimension: titulo_gadnic {
    type: string
    sql: ${TABLE}.titulo_gadnic ;;
  }

  dimension: titulo_meta {
    type: string
    sql: ${TABLE}.titulo_meta ;;
  }

  dimension: titulo_meta_gadnic {
    type: string
    sql: ${TABLE}.titulo_meta_gadnic ;;
  }

  dimension: usuario_modificacion {
    type: string
    sql: ${TABLE}.usuario_modificacion ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
