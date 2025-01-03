# The name of this view in Looker is "Ds Master2comprarapido Menu"
view: ds_master2comprarapido_menu {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2comprarapido.menu` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Clave" in Explore.

  dimension: clave {
    type: string
    sql: ${TABLE}.Clave ;;
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

  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
  }

  dimension: icono {
    type: number
    sql: ${TABLE}.Icono ;;
  }

  dimension: idmenu {
    type: number
    sql: ${TABLE}.IDMenu ;;
  }

  dimension: modulo_menu {
    type: string
    sql: ${TABLE}.ModuloMenu ;;
  }

  dimension: modulo_pc {
    type: number
    sql: ${TABLE}.ModuloPC ;;
  }

  dimension: nivel_usuario {
    type: number
    sql: ${TABLE}.NivelUsuario ;;
  }

  dimension: orden {
    type: string
    sql: ${TABLE}.Orden ;;
  }

  dimension: padre {
    type: number
    sql: ${TABLE}.Padre ;;
  }
  measure: count {
    type: count
  }
}
