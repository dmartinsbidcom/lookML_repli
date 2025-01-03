# The name of this view in Looker is "Checkoutbidcom Testcheckoutbidcom Codigo Barras"
view: checkoutbidcom_testcheckoutbidcom_codigo_barras {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `checkoutbidcom_testcheckoutbidcom.CodigoBarras` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Asignado" in Explore.

  dimension: asignado {
    type: number
    sql: ${TABLE}.Asignado ;;
  }

  dimension: codigo_barra {
    type: string
    sql: ${TABLE}.CodigoBarra ;;
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

  dimension: id_pedido {
    type: number
    sql: ${TABLE}.IdPedido ;;
  }

  dimension: nro_cta_dm {
    type: number
    sql: ${TABLE}.NroCtaDM ;;
  }
  measure: count {
    type: count
  }
}
