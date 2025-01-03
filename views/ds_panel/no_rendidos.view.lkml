# The name of this view in Looker is "No Rendidos"
view: no_rendidos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.no_rendidos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo Seguimiento" in Explore.

  dimension: codigo_seguimiento {
    type: number
    sql: ${TABLE}.codigo_seguimiento ;;
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

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.id_comprobante ;;
  }

  dimension: medio {
    type: string
    sql: ${TABLE}.medio ;;
  }

  dimension: motivo {
    type: string
    sql: ${TABLE}.motivo ;;
  }

  dimension: usuario_escanea {
    type: string
    sql: ${TABLE}.usuario_escanea ;;
  }
  measure: count {
    type: count
  }
}
