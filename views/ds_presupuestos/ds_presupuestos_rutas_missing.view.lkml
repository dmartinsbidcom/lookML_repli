# The name of this view in Looker is "Ds Presupuestos Rutas Missing"
view: ds_presupuestos_rutas_missing {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.rutas_missing` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
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

  dimension: duration {
    type: number
    sql: ${TABLE}.Duration ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_carga {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Fecha_Carga ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.idComprobante ;;
  }

  dimension: location_lat {
    type: string
    sql: ${TABLE}.Location_Lat ;;
  }

  dimension: location_lng {
    type: string
    sql: ${TABLE}.Location_Lng ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: planilla_nombre {
    type: string
    sql: ${TABLE}.Planilla_Nombre ;;
  }

  dimension: reference_person {
    type: string
    sql: ${TABLE}.Reference_Person ;;
  }

  dimension: requires {
    type: string
    sql: ${TABLE}.Requires ;;
  }

  dimension: ruta_missing_id {
    type: number
    sql: ${TABLE}.ruta_missing_ID ;;
  }

  dimension: timewindow {
    type: string
    sql: ${TABLE}.Timewindow ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: volume {
    type: number
    sql: ${TABLE}.Volume ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}.Website ;;
  }

  dimension: weigth {
    type: number
    sql: ${TABLE}.Weigth ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
