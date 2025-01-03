# The name of this view in Looker is "Precio Envio X Peso"
view: precio_envio_x_peso {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.precio_envio_x_peso` ;;

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

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: local {
    type: number
    sql: ${TABLE}.local ;;
  }

  dimension: nacional1 {
    type: number
    sql: ${TABLE}.nacional1 ;;
  }

  dimension: nacional2 {
    type: number
    sql: ${TABLE}.nacional2 ;;
  }

  dimension: peso {
    type: string
    sql: ${TABLE}.peso ;;
  }

  dimension: regional {
    type: number
    sql: ${TABLE}.regional ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  measure: count {
    type: count
  }
}
