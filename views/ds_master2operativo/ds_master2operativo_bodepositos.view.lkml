# The name of this view in Looker is "Ds Master2operativo Bodepositos"
view: ds_master2operativo_bodepositos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2operativo.bodepositos` ;;

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

  dimension: id_bodeposito {
    type: number
    sql: ${TABLE}.idBODeposito ;;
  }

  dimension: id_bodomicilio {
    type: number
    sql: ${TABLE}.idBODomicilio ;;
  }

  dimension: mciddeposito {
    type: number
    sql: ${TABLE}.mciddeposito ;;
  }

  dimension: nombre_bodeposito {
    type: string
    sql: ${TABLE}.NombreBODeposito ;;
  }
  measure: count {
    type: count
  }
}
