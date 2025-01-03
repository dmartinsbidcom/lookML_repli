# The name of this view in Looker is "Ds Master2bidcombo 3gusuariomovil"
view: ds_master2bidcombo_3gusuariomovil {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bidcombo.3gusuariomovil` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Activo" in Explore.

  dimension: activo {
    type: number
    sql: ${TABLE}.Activo ;;
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

  dimension: db {
    type: string
    sql: ${TABLE}.db ;;
  }

  dimension: id3gusuariomovil {
    type: number
    sql: ${TABLE}.id3gusuariomovil ;;
  }

  dimension: id_movil {
    type: string
    sql: ${TABLE}.idMovil ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  dimension: numero {
    type: string
    sql: ${TABLE}.Numero ;;
  }

  dimension: servidor {
    type: number
    sql: ${TABLE}.servidor ;;
  }
  measure: count {
    type: count
  }
}
