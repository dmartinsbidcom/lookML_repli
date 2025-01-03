# The name of this view in Looker is "Grupos Promo"
view: grupos_promo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_newhome.grupos_promo` ;;

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

  dimension: hora {
    type: number
    sql: ${TABLE}.hora ;;
  }

  dimension: id_producto1 {
    type: number
    sql: ${TABLE}.id_producto1 ;;
  }

  dimension: id_producto2 {
    type: number
    sql: ${TABLE}.id_producto2 ;;
  }

  dimension: id_producto3 {
    type: number
    sql: ${TABLE}.id_producto3 ;;
  }

  dimension: id_producto4 {
    type: number
    sql: ${TABLE}.id_producto4 ;;
  }

  dimension: id_producto5 {
    type: number
    sql: ${TABLE}.id_producto5 ;;
  }
  measure: count {
    type: count
  }
}
