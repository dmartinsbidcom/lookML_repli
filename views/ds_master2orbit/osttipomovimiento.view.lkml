# The name of this view in Looker is "Osttipomovimiento"
view: osttipomovimiento {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2orbit.osttipomovimiento` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Actualiza St Contable Ost Tipo Movimiento" in Explore.

  dimension: actualiza_st_contable_ost_tipo_movimiento {
    type: number
    sql: ${TABLE}.ActualizaStContableOStTipoMovimiento ;;
  }

  dimension: actualiza_st_fisico_ost_tipo_movimiento {
    type: number
    sql: ${TABLE}.ActualizaStFisicoOStTipoMovimiento ;;
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

  dimension: id_ost_tipo_movimiento {
    type: number
    sql: ${TABLE}.idOStTipoMovimiento ;;
  }

  dimension: nombre_ost_tipo_movimiento {
    type: string
    sql: ${TABLE}.NombreOStTipoMovimiento ;;
  }
  measure: count {
    type: count
  }
}
