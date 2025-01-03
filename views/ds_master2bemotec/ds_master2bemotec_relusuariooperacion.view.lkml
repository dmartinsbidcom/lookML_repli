# The name of this view in Looker is "Ds Master2bemotec Relusuariooperacion"
view: ds_master2bemotec_relusuariooperacion {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bemotec.relusuariooperacion` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Amplia Rel Usuario Operacion" in Explore.

  dimension: amplia_rel_usuario_operacion {
    type: number
    sql: ${TABLE}.AmpliaRelUsuarioOperacion ;;
  }

  dimension: anular_rel_usuario_operacion {
    type: number
    sql: ${TABLE}.AnularRelUsuarioOperacion ;;
  }

  dimension: cargar_rel_usuario_operacion {
    type: number
    sql: ${TABLE}.CargarRelUsuarioOperacion ;;
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

  dimension: eliminar_rel_usuario_operacion {
    type: number
    sql: ${TABLE}.EliminarRelUsuarioOperacion ;;
  }

  dimension: id_def_operacion {
    type: number
    sql: ${TABLE}.IdDefOperacion ;;
  }

  dimension: id_rel_usuario_operacion {
    type: number
    sql: ${TABLE}.IdRelUsuarioOperacion ;;
  }

  dimension: id_usuario {
    type: number
    sql: ${TABLE}.IdUsuario ;;
  }

  dimension: modificar_rel_usuario_operacion {
    type: number
    sql: ${TABLE}.ModificarRelUsuarioOperacion ;;
  }
  measure: count {
    type: count
  }
}
