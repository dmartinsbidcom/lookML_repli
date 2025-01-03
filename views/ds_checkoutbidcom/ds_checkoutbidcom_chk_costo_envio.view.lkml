# The name of this view in Looker is "Ds Checkoutbidcom Chk Costo Envio"
view: ds_checkoutbidcom_chk_costo_envio {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_checkoutbidcom.CHK_CostoEnvio` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cordon" in Explore.

  dimension: cordon {
    type: number
    sql: ${TABLE}.cordon ;;
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

  dimension: flete {
    type: number
    sql: ${TABLE}.flete ;;
  }

  dimension: habilitado {
    type: number
    sql: ${TABLE}.habilitado ;;
  }

  dimension: localidad {
    type: string
    sql: ${TABLE}.localidad ;;
  }

  dimension: moto {
    type: number
    sql: ${TABLE}.moto ;;
  }

  dimension: partido {
    type: string
    sql: ${TABLE}.partido ;;
  }
  measure: count {
    type: count
  }
}
