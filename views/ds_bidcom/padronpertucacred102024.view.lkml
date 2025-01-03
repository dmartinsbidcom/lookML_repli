# The name of this view in Looker is "Padronpertucacred102024"
view: padronpertucacred102024 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_bidcom.padronpertucacred102024` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cm" in Explore.

  dimension: cm {
    type: string
    sql: ${TABLE}.CM ;;
  }

  dimension: coeficiente {
    type: number
    sql: ${TABLE}.Coeficiente ;;
  }

  dimension: cuit {
    type: string
    sql: ${TABLE}.Cuit ;;
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

  dimension: exento {
    type: string
    sql: ${TABLE}.Exento ;;
  }
  measure: count {
    type: count
  }
}
