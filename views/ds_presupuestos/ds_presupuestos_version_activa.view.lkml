# The name of this view in Looker is "Ds Presupuestos Version Activa"
view: ds_presupuestos_version_activa {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.version_activa` ;;

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

  dimension: id_version_activa {
    type: number
    sql: ${TABLE}.idVersionActiva ;;
  }

  dimension: modulo_version_activa {
    type: string
    sql: ${TABLE}.moduloVersionActiva ;;
  }

  dimension: numero_version_activa {
    type: string
    sql: ${TABLE}.numeroVersionActiva ;;
  }

  dimension: usuario_version_activa {
    type: number
    sql: ${TABLE}.usuarioVersionActiva ;;
  }
  measure: count {
    type: count
  }
}
