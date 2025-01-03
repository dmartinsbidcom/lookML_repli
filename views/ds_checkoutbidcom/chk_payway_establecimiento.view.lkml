# The name of this view in Looker is "Chk Payway Establecimiento"
view: chk_payway_establecimiento {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_checkoutbidcom.CHK_Payway_establecimiento` ;;

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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: id_payway_banco {
    type: number
    sql: ${TABLE}.idPaywayBanco ;;
  }

  dimension: id_razon_social {
    type: number
    sql: ${TABLE}.idRazonSocial ;;
  }

  dimension: id_site {
    type: string
    sql: ${TABLE}.idSite ;;
  }

  dimension: pci_key {
    type: string
    sql: ${TABLE}.pci_key ;;
  }

  dimension: private_key {
    type: string
    sql: ${TABLE}.private_key ;;
  }

  dimension: public_key {
    type: string
    sql: ${TABLE}.public_key ;;
  }

  dimension: state {
    type: number
    sql: ${TABLE}.state ;;
  }
  measure: count {
    type: count
  }
}
