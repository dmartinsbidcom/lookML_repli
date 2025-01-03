# The name of this view in Looker is "Ds Master2contable Admchequeras"
view: ds_master2contable_admchequeras {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2contable.admchequeras` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Anuladoschequera" in Explore.

  dimension: anuladoschequera {
    type: string
    sql: ${TABLE}.anuladoschequera ;;
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

  dimension: estadochequera {
    type: number
    sql: ${TABLE}.estadochequera ;;
  }

  dimension: idchequera {
    type: number
    sql: ${TABLE}.idchequera ;;
  }

  dimension: idvalor {
    type: number
    sql: ${TABLE}.idvalor ;;
  }

  dimension: numeroshabilitadoschequera {
    type: string
    sql: ${TABLE}.numeroshabilitadoschequera ;;
  }

  dimension: primernrochequera {
    type: number
    sql: ${TABLE}.primernrochequera ;;
  }

  dimension: proximonrochequera {
    type: number
    sql: ${TABLE}.proximonrochequera ;;
  }

  dimension: ultimonrochequera {
    type: number
    sql: ${TABLE}.ultimonrochequera ;;
  }
  measure: count {
    type: count
  }
}
