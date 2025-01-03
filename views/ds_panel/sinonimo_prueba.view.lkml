# The name of this view in Looker is "Sinonimo Prueba"
view: sinonimo_prueba {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.sinonimo_prueba` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Categoria Principal Producto" in Explore.

  dimension: categoria_principal_producto {
    type: number
    sql: ${TABLE}.categoria_principal_producto ;;
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

  dimension: sinonimo {
    type: string
    sql: ${TABLE}.sinonimo ;;
  }
  measure: count {
    type: count
  }
}
