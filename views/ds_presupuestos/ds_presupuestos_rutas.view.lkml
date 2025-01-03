# The name of this view in Looker is "Ds Presupuestos Rutas"
view: ds_presupuestos_rutas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.rutas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Address 1" in Explore.

  dimension: address_1 {
    type: string
    sql: ${TABLE}.Address_1 ;;
  }

  dimension: address_2 {
    type: string
    sql: ${TABLE}.Address_2 ;;
  }

  dimension: comentarios_entrega {
    type: string
    sql: ${TABLE}.Comentarios_Entrega ;;
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

  dimension: distance {
    type: number
    sql: ${TABLE}.Distance ;;
  }

  dimension: done_at {
    type: string
    sql: ${TABLE}.Done_at ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.Duration ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }

  dimension: eta {
    type: string
    sql: ${TABLE}.ETA ;;
  }

  dimension: etd {
    type: string
    sql: ${TABLE}.ETD ;;
  }

  dimension: firma {
    type: string
    sql: ${TABLE}.Firma ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.idComprobante ;;
  }

  dimension: imagenes {
    type: string
    sql: ${TABLE}.Imagenes ;;
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

  dimension: order {
    type: number
    sql: ${TABLE}.`Order` ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: reference_person {
    type: string
    sql: ${TABLE}.Reference_Person ;;
  }

  dimension: rejected_reasons {
    type: string
    sql: ${TABLE}.Rejected_Reasons ;;
  }

  dimension: requires {
    type: string
    sql: ${TABLE}.Requires ;;
  }

  dimension: ruta_id {
    type: number
    sql: ${TABLE}.ruta_ID ;;
  }

  dimension: ruta_vehicle_id {
    type: number
    sql: ${TABLE}.ruta_vehicle_ID ;;
  }

  dimension: timewindow {
    type: string
    sql: ${TABLE}.Timewindow ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: vehicle_id {
    type: string
    sql: ${TABLE}.VehicleID ;;
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
