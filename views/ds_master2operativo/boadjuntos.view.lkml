# The name of this view in Looker is "Boadjuntos"
view: boadjuntos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2operativo.boadjuntos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Claveboadjunto" in Explore.

  dimension: claveboadjunto {
    type: string
    sql: ${TABLE}.claveboadjunto ;;
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

  dimension: descripcionboadjunto {
    type: string
    sql: ${TABLE}.descripcionboadjunto ;;
  }

  dimension: fechaboadjunto {
    type: number
    sql: ${TABLE}.fechaboadjunto ;;
  }

  dimension: idboadjunto {
    type: number
    sql: ${TABLE}.idboadjunto ;;
  }

  dimension: idusuario {
    type: number
    sql: ${TABLE}.idusuario ;;
  }

  dimension: nombrearchivoboadjunto {
    type: string
    sql: ${TABLE}.nombrearchivoboadjunto ;;
  }
  measure: count {
    type: count
  }
}
