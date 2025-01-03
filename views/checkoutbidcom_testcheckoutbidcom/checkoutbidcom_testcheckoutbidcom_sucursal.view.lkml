# The name of this view in Looker is "Checkoutbidcom Testcheckoutbidcom Sucursal"
view: checkoutbidcom_testcheckoutbidcom_sucursal {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `checkoutbidcom_testcheckoutbidcom.sucursal` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Altura" in Explore.

  dimension: altura {
    type: string
    sql: ${TABLE}.altura ;;
  }

  dimension: calle {
    type: string
    sql: ${TABLE}.calle ;;
  }

  dimension: codigo_postal {
    type: string
    sql: ${TABLE}.codigo_postal ;;
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

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: id_provincia {
    type: number
    sql: ${TABLE}.idProvincia ;;
  }

  dimension: localidad {
    type: string
    sql: ${TABLE}.localidad ;;
  }

  dimension: provincia {
    type: string
    sql: ${TABLE}.provincia ;;
  }

  dimension: sigla {
    type: string
    sql: ${TABLE}.sigla ;;
  }
  measure: count {
    type: count
  }
}
