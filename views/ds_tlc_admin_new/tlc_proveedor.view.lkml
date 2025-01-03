# The name of this view in Looker is "Tlc Proveedor"
view: tlc_proveedor {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_tlc_admin_new.tlc_proveedor` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Alias" in Explore.

  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: ciudad {
    type: string
    sql: ${TABLE}.ciudad ;;
  }

  dimension: contacto {
    type: string
    sql: ${TABLE}.contacto ;;
  }

  dimension: credito_otorgado {
    type: number
    sql: ${TABLE}.credito_otorgado ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }

  dimension: pais {
    type: string
    sql: ${TABLE}.pais ;;
  }

  dimension: puerto_id {
    type: number
    sql: ${TABLE}.puerto_id ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.razon_social ;;
  }

  dimension: responsable_id {
    type: number
    sql: ${TABLE}.responsable_id ;;
  }

  dimension: wechat_id {
    type: string
    sql: ${TABLE}.wechat_id ;;
  }
  measure: count {
    type: count
  }
}
