# The name of this view in Looker is "Codigos Postales Amba Copy"
view: codigos_postales_amba_copy {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.codigos_postales_amba_copy` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo Postal" in Explore.

  dimension: codigo_postal {
    type: number
    sql: ${TABLE}.codigo_postal ;;
  }

  dimension: cordon {
    type: number
    sql: ${TABLE}.cordon ;;
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

  dimension: entrega_hoy {
    type: number
    sql: ${TABLE}.entrega_hoy ;;
  }

  dimension: habilitado {
    type: number
    sql: ${TABLE}.habilitado ;;
  }

  dimension: id_provincia {
    type: number
    sql: ${TABLE}.id_provincia ;;
  }

  dimension: precio_flete {
    type: string
    sql: ${TABLE}.precio_flete ;;
  }

  dimension: precio_moto {
    type: string
    sql: ${TABLE}.precio_moto ;;
  }
  measure: count {
    type: count
  }
}
