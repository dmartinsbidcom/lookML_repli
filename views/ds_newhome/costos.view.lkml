# The name of this view in Looker is "Costos"
view: costos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_newhome.costos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Alicuota Iva" in Explore.

  dimension: alicuota_iva {
    type: string
    sql: ${TABLE}.alicuota_iva ;;
  }

  dimension: costo_envio_ml {
    type: string
    sql: ${TABLE}.costo_envio_ml ;;
  }

  dimension: costo_unitario {
    type: string
    sql: ${TABLE}.costo_unitario ;;
  }

  dimension: datastream_metadata__is_deleted {
    type: yesno
    sql: ${TABLE}.datastream_metadata.is_deleted ;;
    group_label: "Datastream Metadata"
    group_item_label: "Is Deleted"
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

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: stock_centro {
    type: string
    sql: ${TABLE}.stock_centro ;;
  }
  measure: count {
    type: count
  }
}
