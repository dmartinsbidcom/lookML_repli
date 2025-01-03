# The name of this view in Looker is "Ds Master2foretec Relstproductodeposito"
view: ds_master2foretec_relstproductodeposito {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2foretec.relstproductodeposito` ;;

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

  dimension: estanteria_rel_st_producto_deposito {
    type: string
    sql: ${TABLE}.EstanteriaRelStProductoDeposito ;;
  }

  dimension: id_rel_st_producto_deposito {
    type: number
    sql: ${TABLE}.IdRelStProductoDeposito ;;
  }

  dimension: id_st_deposito {
    type: number
    sql: ${TABLE}.IdStDeposito ;;
  }

  dimension: id_st_producto {
    type: number
    sql: ${TABLE}.IdStProducto ;;
  }

  dimension: st_minimo_rel_st_producto_deposito {
    type: number
    sql: ${TABLE}.StMinimoRelStProductoDeposito ;;
  }
  measure: count {
    type: count
  }
}
