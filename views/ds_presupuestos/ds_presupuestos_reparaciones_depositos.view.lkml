# The name of this view in Looker is "Ds Presupuestos Reparaciones Depositos"
view: ds_presupuestos_reparaciones_depositos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.reparaciones_depositos` ;;

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

  dimension: es_modificable_reparacion_deposito {
    type: number
    sql: ${TABLE}.esModificableReparacionDeposito ;;
  }

  dimension: id_reparacion_deposito {
    type: number
    sql: ${TABLE}.idReparacionDeposito ;;
  }

  dimension: nombre_reparacion_deposito {
    type: string
    sql: ${TABLE}.nombreReparacionDeposito ;;
  }
  measure: count {
    type: count
  }
}
