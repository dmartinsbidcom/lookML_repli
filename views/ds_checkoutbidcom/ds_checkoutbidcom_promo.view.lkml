# The name of this view in Looker is "Ds Checkoutbidcom Promo"
view: ds_checkoutbidcom_promo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_checkoutbidcom.Promo` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Activa" in Explore.

  dimension: activa {
    type: number
    sql: ${TABLE}.Activa ;;
  }

  dimension: banco {
    type: number
    sql: ${TABLE}.Banco ;;
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

  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: desde {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Desde ;;
  }

  dimension: entidad_id {
    type: number
    sql: ${TABLE}.EntidadId ;;
  }

  dimension_group: hasta {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Hasta ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: logo {
    type: string
    sql: ${TABLE}.Logo ;;
  }

  dimension: medio_pago_id {
    type: number
    sql: ${TABLE}.MedioPagoId ;;
  }

  dimension: prioridad {
    type: number
    sql: ${TABLE}.Prioridad ;;
  }

  dimension: tarjeta {
    type: number
    sql: ${TABLE}.Tarjeta ;;
  }

  dimension: tipo_id {
    type: number
    sql: ${TABLE}.TipoId ;;
  }
  measure: count {
    type: count
  }
}
