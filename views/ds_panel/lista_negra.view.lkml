# The name of this view in Looker is "Lista Negra"
view: lista_negra {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.lista_negra` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Calle" in Explore.

  dimension: calle {
    type: string
    sql: ${TABLE}.calle ;;
  }

  dimension: celular {
    type: string
    sql: ${TABLE}.celular ;;
  }

  dimension: creador {
    type: string
    sql: ${TABLE}.creador ;;
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

  dimension: dni {
    type: number
    sql: ${TABLE}.dni ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_ultimo_intento {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_ultimo_intento ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: modificado_por {
    type: string
    sql: ${TABLE}.modificado_por ;;
  }

  dimension: numero {
    type: number
    sql: ${TABLE}.numero ;;
  }
  measure: count {
    type: count
  }
}
