# The name of this view in Looker is "Checkoutbidcom Testcheckoutbidcom Chk Cliente Direccion"
view: checkoutbidcom_testcheckoutbidcom_chk_cliente_direccion {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `checkoutbidcom_testcheckoutbidcom.CHK_Cliente_Direccion` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Aclaracion" in Explore.

  dimension: aclaracion {
    type: string
    sql: ${TABLE}.aclaracion ;;
  }

  dimension: calle {
    type: string
    sql: ${TABLE}.calle ;;
  }

  dimension: cp {
    type: string
    sql: ${TABLE}.cp ;;
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

  dimension: entre_calle1 {
    type: string
    sql: ${TABLE}.entre_calle1 ;;
  }

  dimension: entre_calle2 {
    type: string
    sql: ${TABLE}.entre_calle2 ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: id_direccion {
    type: number
    sql: ${TABLE}.id_direccion ;;
  }

  dimension: numero {
    type: string
    sql: ${TABLE}.numero ;;
  }

  dimension: piso {
    type: string
    sql: ${TABLE}.piso ;;
  }

  dimension: principal {
    type: number
    sql: ${TABLE}.principal ;;
  }
  measure: count {
    type: count
  }
}
