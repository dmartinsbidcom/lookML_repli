# The name of this view in Looker is "Ds Master2contable Menuweb"
view: ds_master2contable_menuweb {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2contable.menuweb` ;;

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

  dimension: descripcion_menu_web {
    type: string
    sql: ${TABLE}.DescripcionMenuWeb ;;
  }

  dimension: grafico {
    type: number
    sql: ${TABLE}.grafico ;;
  }

  dimension: id_menu_web {
    type: number
    sql: ${TABLE}.idMenuWeb ;;
  }

  dimension: id_menu_web_padre {
    type: number
    sql: ${TABLE}.idMenuWebPadre ;;
  }

  dimension: imagen_menu_web {
    type: string
    sql: ${TABLE}.imagenMenuWeb ;;
  }

  dimension: nombre_menu_web {
    type: string
    sql: ${TABLE}.NombreMenuWeb ;;
  }

  dimension: sql_menu_web {
    type: string
    sql: ${TABLE}.SqlMenuWeb ;;
  }

  dimension: urlmenu_web {
    type: string
    sql: ${TABLE}.urlmenuWeb ;;
  }
  measure: count {
    type: count
  }
}
