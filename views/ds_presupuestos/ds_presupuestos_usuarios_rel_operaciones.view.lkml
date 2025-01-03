# The name of this view in Looker is "Ds Presupuestos Usuarios Rel Operaciones"
view: ds_presupuestos_usuarios_rel_operaciones {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.usuarios_rel_operaciones` ;;

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

  dimension: id_operacion {
    type: number
    sql: ${TABLE}.idOperacion ;;
  }

  dimension: id_usuario {
    type: number
    sql: ${TABLE}.idUsuario ;;
  }

  dimension: id_usuario_operacion {
    type: number
    sql: ${TABLE}.idUsuarioOperacion ;;
  }

  dimension: permite_alta_usuario_operacion {
    type: number
    sql: ${TABLE}.permiteAltaUsuarioOperacion ;;
  }

  dimension: permite_modificar_usuario_operacion {
    type: number
    sql: ${TABLE}.permiteModificarUsuarioOperacion ;;
  }

  dimension: permite_visualizar_usuario_operacion {
    type: number
    sql: ${TABLE}.permiteVisualizarUsuarioOperacion ;;
  }
  measure: count {
    type: count
  }
}
