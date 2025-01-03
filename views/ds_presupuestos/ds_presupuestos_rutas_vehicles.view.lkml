# The name of this view in Looker is "Ds Presupuestos Rutas Vehicles"
view: ds_presupuestos_rutas_vehicles {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.rutas_vehicles` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Address End" in Explore.

  dimension: address_end {
    type: string
    sql: ${TABLE}.Address_End ;;
  }

  dimension: address_start {
    type: string
    sql: ${TABLE}.Address_Start ;;
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

  dimension: enlace_ruta {
    type: string
    sql: ${TABLE}.Enlace_Ruta ;;
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

  dimension: location_end_lat {
    type: string
    sql: ${TABLE}.Location_End_Lat ;;
  }

  dimension: location_end_lng {
    type: string
    sql: ${TABLE}.Location_End_Lng ;;
  }

  dimension: location_start_lat {
    type: string
    sql: ${TABLE}.Location_Start_Lat ;;
  }

  dimension: location_start_lng {
    type: string
    sql: ${TABLE}.Location_Start_Lng ;;
  }

  dimension: max_services {
    type: number
    sql: ${TABLE}.Max_Services ;;
  }

  dimension: max_volume {
    type: number
    sql: ${TABLE}.Max_Volume ;;
  }

  dimension: max_weigth {
    type: number
    sql: ${TABLE}.Max_Weigth ;;
  }

  dimension: planilla_nombre {
    type: string
    sql: ${TABLE}.Planilla_Nombre ;;
  }

  dimension: provides {
    type: string
    sql: ${TABLE}.Provides ;;
  }

  dimension: ruta_vehicle_id {
    type: number
    sql: ${TABLE}.ruta_vehicle_ID ;;
  }

  dimension: timewindow {
    type: string
    sql: ${TABLE}.Timewindow ;;
  }

  dimension: vehicle_id {
    type: string
    sql: ${TABLE}.VehicleID ;;
  }
  measure: count {
    type: count
  }
}
