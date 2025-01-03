# The name of this view in Looker is "Ds Presupuestos Condiciones Fiscales"
view: ds_presupuestos_condiciones_fiscales {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.condiciones_fiscales` ;;

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

  dimension: id_condicion_fiscal {
    type: number
    sql: ${TABLE}.idCondicionFiscal ;;
  }

  dimension: letra_factura_condicion_fiscal {
    type: string
    sql: ${TABLE}.letraFacturaCondicionFiscal ;;
  }

  dimension: nombre_condicion_fiscal {
    type: string
    sql: ${TABLE}.nombreCondicionFiscal ;;
  }
  measure: count {
    type: count
  }
}
