# The name of this view in Looker is "Ds Checkoutbidcom Cliente Master Chief"
view: ds_checkoutbidcom_cliente_master_chief {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_checkoutbidcom.ClienteMasterChief` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Calle" in Explore.

  dimension: calle {
    type: string
    sql: ${TABLE}.Calle ;;
  }

  dimension: datastream_metadata__is_deleted {
    type: yesno
    sql: ${TABLE}.datastream_metadata.is_deleted ;;
    group_label: "Datastream Metadata"
    group_item_label: "Is Deleted"
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

  dimension: dpto {
    type: string
    sql: ${TABLE}.Dpto ;;
  }

  dimension: id_cliente {
    type: number
    sql: ${TABLE}.IdCliente ;;
  }

  dimension: id_localidad {
    type: number
    sql: ${TABLE}.IdLocalidad ;;
  }

  dimension: numero {
    type: string
    sql: ${TABLE}.Numero ;;
  }

  dimension: piso {
    type: string
    sql: ${TABLE}.Piso ;;
  }
  measure: count {
    type: count
  }
}
