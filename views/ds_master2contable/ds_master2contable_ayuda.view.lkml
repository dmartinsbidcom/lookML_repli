# The name of this view in Looker is "Ds Master2contable Ayuda"
view: ds_master2contable_ayuda {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2contable.ayuda` ;;

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

  dimension: id_formulario_ayuda {
    type: number
    sql: ${TABLE}.IdFormularioAyuda ;;
  }

  dimension: link_pagina_ayuda {
    type: string
    sql: ${TABLE}.LinkPaginaAyuda ;;
  }

  dimension: nombre_formulario_ayuda {
    type: string
    sql: ${TABLE}.NombreFormularioAyuda ;;
  }

  dimension: sub_pagina_ayuda {
    type: string
    sql: ${TABLE}.SubPaginaAyuda ;;
  }
  measure: count {
    type: count
  }
}
