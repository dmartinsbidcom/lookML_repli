# The name of this view in Looker is "Ds Master2cajas Itemsanclados"
view: ds_master2cajas_itemsanclados {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2cajas.itemsanclados` ;;

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

  dimension: icono_item_anclado {
    type: number
    sql: ${TABLE}.IconoItemAnclado ;;
  }

  dimension: id_def_operacion {
    type: number
    sql: ${TABLE}.idDefOperacion ;;
  }

  dimension: id_item_anclado {
    type: number
    sql: ${TABLE}.idItemAnclado ;;
  }

  dimension: id_menu {
    type: number
    sql: ${TABLE}.idMenu ;;
  }

  dimension: id_usuario {
    type: number
    sql: ${TABLE}.idUsuario ;;
  }

  dimension: pos_xitem_anclado {
    type: number
    sql: ${TABLE}.PosXItemAnclado ;;
  }

  dimension: pos_yitem_anclado {
    type: number
    sql: ${TABLE}.PosYItemAnclado ;;
  }

  dimension: texto_item_anclado {
    type: string
    sql: ${TABLE}.TextoItemAnclado ;;
  }
  measure: count {
    type: count
  }
}
