# The name of this view in Looker is "Mla Vinculado Old"
view: mla_vinculado_old {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_bidcom.mla_vinculado_old` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Activos Pausados" in Explore.

  dimension: activos_pausados {
    type: string
    sql: ${TABLE}.activos_pausados ;;
  }

  dimension: checkout {
    type: string
    sql: ${TABLE}.checkout ;;
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

  dimension: gestion_negocios {
    type: string
    sql: ${TABLE}.gestion_negocios ;;
  }

  dimension: precios_ml {
    type: string
    sql: ${TABLE}.precios_ml ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  measure: count {
    type: count
  }
}
