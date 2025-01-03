# The name of this view in Looker is "Ds Master2operativo Bostprodpres"
view: ds_master2operativo_bostprodpres {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2operativo.bostprodpres` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigobostprodpres" in Explore.

  dimension: codigobostprodpres {
    type: string
    sql: ${TABLE}.codigobostprodpres ;;
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

  dimension: idbostprodpres {
    type: number
    sql: ${TABLE}.idbostprodpres ;;
  }

  dimension: nombrebostprodpres {
    type: string
    sql: ${TABLE}.nombrebostprodpres ;;
  }

  dimension: valorbostprodpres {
    type: number
    sql: ${TABLE}.valorbostprodpres ;;
  }
  measure: count {
    type: count
  }
}
