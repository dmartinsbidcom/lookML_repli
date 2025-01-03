# The name of this view in Looker is "Ds Presupuestos Usuariosperfiles Rel Productoscolumnas"
view: ds_presupuestos_usuariosperfiles_rel_productoscolumnas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.usuariosperfiles_rel_productoscolumnas` ;;

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

  dimension: escritura_usuario_perfil_rel_producto_columna {
    type: number
    sql: ${TABLE}.escrituraUsuarioPerfilRelProductoColumna ;;
  }

  dimension: id_producto_columna {
    type: number
    sql: ${TABLE}.idProductoColumna ;;
  }

  dimension: id_usuario_perfil {
    type: number
    sql: ${TABLE}.idUsuarioPerfil ;;
  }

  dimension: id_usuario_perfil_rel_producto_columna {
    type: number
    sql: ${TABLE}.idUsuarioPerfilRelProductoColumna ;;
  }
  measure: count {
    type: count
  }
}
