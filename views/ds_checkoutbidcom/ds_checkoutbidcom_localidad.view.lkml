# The name of this view in Looker is "Ds Checkoutbidcom Localidad"
view: ds_checkoutbidcom_localidad {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_checkoutbidcom.Localidad` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Costo Flete" in Explore.

  dimension: costo_flete {
    type: number
    sql: ${TABLE}.CostoFlete ;;
  }

  dimension: costo_moto {
    type: number
    sql: ${TABLE}.CostoMoto ;;
  }

  dimension: cp {
    type: number
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

  dimension: id_localidad {
    type: number
    sql: ${TABLE}.IdLocalidad ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  dimension: zona {
    type: string
    sql: ${TABLE}.Zona ;;
  }
  measure: count {
    type: count
  }
}
