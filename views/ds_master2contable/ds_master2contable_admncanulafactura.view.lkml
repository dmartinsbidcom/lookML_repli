# The name of this view in Looker is "Ds Master2contable Admncanulafactura"
view: ds_master2contable_admncanulafactura {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2contable.admncanulafactura` ;;

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

  dimension: id_comprobante_fc {
    type: number
    sql: ${TABLE}.idComprobanteFC ;;
  }

  dimension: id_comprobante_nc {
    type: number
    sql: ${TABLE}.idComprobanteNC ;;
  }

  dimension: id_ncanula_factura {
    type: number
    sql: ${TABLE}.idNCAnulaFactura ;;
  }

  dimension: id_st_movimiento {
    type: number
    sql: ${TABLE}.idStMovimiento ;;
  }
  measure: count {
    type: count
  }
}
