# The name of this view in Looker is "Ds Presupuestos Usuariosperfiles Rel Operaciones"
view: ds_presupuestos_usuariosperfiles_rel_operaciones {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.usuariosperfiles_rel_operaciones` ;;

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

  dimension: id_usuario_perfil {
    type: number
    sql: ${TABLE}.idUsuarioPerfil ;;
  }

  dimension: id_usuario_perfil_operacion {
    type: number
    sql: ${TABLE}.idUsuarioPerfilOperacion ;;
  }

  dimension: permite_alta_usuario_perfil_operacion {
    type: number
    sql: ${TABLE}.permiteAltaUsuarioPerfilOperacion ;;
  }

  dimension: permite_modificar_usuario_perfil_operacion {
    type: number
    sql: ${TABLE}.permiteModificarUsuarioPerfilOperacion ;;
  }

  dimension: permite_visualizar_usuario_perfil_operacion {
    type: number
    sql: ${TABLE}.permiteVisualizarUsuarioPerfilOperacion ;;
  }
  measure: count {
    type: count
  }
}
