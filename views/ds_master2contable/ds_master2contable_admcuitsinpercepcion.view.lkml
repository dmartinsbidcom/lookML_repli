# The name of this view in Looker is "Ds Master2contable Admcuitsinpercepcion"
view: ds_master2contable_admcuitsinpercepcion {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2contable.admcuitsinpercepcion` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cuitsinpercepcion" in Explore.

  dimension: cuitsinpercepcion {
    type: string
    sql: ${TABLE}.cuitsinpercepcion ;;
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

  dimension: idcuitsinpercepcion {
    type: number
    sql: ${TABLE}.idcuitsinpercepcion ;;
  }

  dimension: idrelccdomicilio {
    type: number
    sql: ${TABLE}.idrelccdomicilio ;;
  }

  dimension: tipocuitespecial {
    type: number
    sql: ${TABLE}.tipocuitespecial ;;
  }
  measure: count {
    type: count
  }
}
