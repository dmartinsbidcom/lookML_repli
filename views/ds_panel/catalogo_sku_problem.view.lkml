# The name of this view in Looker is "Catalogo SKU Problem"
view: catalogo_sku_problem {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.catalogo_sku_problem` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Array Images" in Explore.

  dimension: array_images {
    type: string
    sql: ${TABLE}.array_images ;;
  }

  dimension: array_videos {
    type: string
    sql: ${TABLE}.array_videos ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: so {
    type: string
    sql: ${TABLE}.so ;;
  }

  dimension: solucion_array_images {
    type: string
    sql: ${TABLE}.solucion_array_images ;;
  }

  dimension: solucion_array_otros {
    type: string
    sql: ${TABLE}.solucion_array_otros ;;
  }

  dimension: solucion_array_videos {
    type: string
    sql: ${TABLE}.solucion_array_videos ;;
  }

  dimension: solution {
    type: string
    sql: ${TABLE}.solution ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
  measure: count {
    type: count
  }
}
