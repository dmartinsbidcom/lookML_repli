# The name of this view in Looker is "Ds Presupuestos Productos Categorias Rel Productos Problemas"
view: ds_presupuestos_productos_categorias_rel_productos_problemas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.productos_categorias_rel_productos_problemas` ;;

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

  dimension: id_producto_categoria {
    type: number
    sql: ${TABLE}.idProductoCategoria ;;
  }

  dimension: id_producto_categoria_rel_producto_problema {
    type: number
    sql: ${TABLE}.idProductoCategoriaRelProductoProblema ;;
  }

  dimension: id_producto_problema {
    type: number
    sql: ${TABLE}.idProductoProblema ;;
  }
  measure: count {
    type: count
  }
}