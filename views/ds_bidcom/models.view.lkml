# The name of this view in Looker is "Models"
view: models {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_bidcom.models` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo Aguila" in Explore.

  dimension: codigo_aguila {
    type: string
    sql: ${TABLE}.codigo_aguila ;;
  }

  dimension: color_modelo {
    type: string
    sql: ${TABLE}.color_modelo ;;
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

  dimension: ean {
    type: string
    sql: ${TABLE}.ean ;;
  }

  dimension: en_pausa {
    type: number
    sql: ${TABLE}.en_pausa ;;
  }

  dimension: id_producto {
    type: number
    sql: ${TABLE}.id_producto ;;
  }

  dimension: imagen_modelo {
    type: number
    sql: ${TABLE}.imagen_modelo ;;
  }

  dimension: manufacturing_time_days {
    type: number
    sql: ${TABLE}.manufacturing_time_days ;;
  }

  dimension: nombre_modelo {
    type: string
    sql: ${TABLE}.nombre_modelo ;;
  }

  dimension: orden {
    type: number
    sql: ${TABLE}.orden ;;
  }

  dimension: post_id {
    type: number
    sql: ${TABLE}.post_id ;;
  }

  dimension: talle_custom_modelo {
    type: string
    sql: ${TABLE}.talle_custom_modelo ;;
  }

  dimension: talle_modelo {
    type: string
    sql: ${TABLE}.talle_modelo ;;
  }

  dimension: url_imagen_modelo {
    type: string
    sql: ${TABLE}.url_imagen_modelo ;;
  }
  measure: count {
    type: count
  }
}
