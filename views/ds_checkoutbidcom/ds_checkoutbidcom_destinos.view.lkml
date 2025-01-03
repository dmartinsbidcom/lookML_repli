# The name of this view in Looker is "Ds Checkoutbidcom Destinos"
view: ds_checkoutbidcom_destinos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_checkoutbidcom.Destinos` ;;

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

  dimension: destino {
    type: string
    sql: ${TABLE}.Destino ;;
  }

  dimension: id_destino {
    type: number
    sql: ${TABLE}.IdDestino ;;
  }

  dimension: id_provincia {
    type: number
    sql: ${TABLE}.IdProvincia ;;
  }

  dimension: valor_correo {
    type: number
    sql: ${TABLE}.ValorCorreo ;;
  }

  dimension: valor_correo10 {
    type: number
    sql: ${TABLE}.ValorCorreo10 ;;
  }

  dimension: valor_correo11 {
    type: number
    sql: ${TABLE}.ValorCorreo11 ;;
  }

  dimension: valor_correo12 {
    type: number
    sql: ${TABLE}.ValorCorreo12 ;;
  }

  dimension: valor_correo13 {
    type: number
    sql: ${TABLE}.ValorCorreo13 ;;
  }

  dimension: valor_correo14 {
    type: number
    sql: ${TABLE}.ValorCorreo14 ;;
  }

  dimension: valor_correo15 {
    type: number
    sql: ${TABLE}.ValorCorreo15 ;;
  }

  dimension: valor_correo2 {
    type: number
    sql: ${TABLE}.ValorCorreo2 ;;
  }

  dimension: valor_correo3 {
    type: number
    sql: ${TABLE}.ValorCorreo3 ;;
  }

  dimension: valor_correo4 {
    type: number
    sql: ${TABLE}.ValorCorreo4 ;;
  }

  dimension: valor_correo5 {
    type: number
    sql: ${TABLE}.ValorCorreo5 ;;
  }

  dimension: valor_correo6 {
    type: number
    sql: ${TABLE}.ValorCorreo6 ;;
  }

  dimension: valor_correo7 {
    type: number
    sql: ${TABLE}.ValorCorreo7 ;;
  }

  dimension: valor_correo8 {
    type: number
    sql: ${TABLE}.ValorCorreo8 ;;
  }

  dimension: valor_correo9 {
    type: number
    sql: ${TABLE}.ValorCorreo9 ;;
  }

  dimension: valor_micro {
    type: number
    sql: ${TABLE}.ValorMicro ;;
  }

  dimension: valor_micro10 {
    type: number
    sql: ${TABLE}.ValorMicro10 ;;
  }

  dimension: valor_micro11 {
    type: number
    sql: ${TABLE}.ValorMicro11 ;;
  }

  dimension: valor_micro12 {
    type: number
    sql: ${TABLE}.ValorMicro12 ;;
  }

  dimension: valor_micro13 {
    type: number
    sql: ${TABLE}.ValorMicro13 ;;
  }

  dimension: valor_micro14 {
    type: number
    sql: ${TABLE}.ValorMicro14 ;;
  }

  dimension: valor_micro15 {
    type: number
    sql: ${TABLE}.ValorMicro15 ;;
  }

  dimension: valor_micro2 {
    type: number
    sql: ${TABLE}.ValorMicro2 ;;
  }

  dimension: valor_micro3 {
    type: number
    sql: ${TABLE}.ValorMicro3 ;;
  }

  dimension: valor_micro4 {
    type: number
    sql: ${TABLE}.ValorMicro4 ;;
  }

  dimension: valor_micro5 {
    type: number
    sql: ${TABLE}.ValorMicro5 ;;
  }

  dimension: valor_micro6 {
    type: number
    sql: ${TABLE}.ValorMicro6 ;;
  }

  dimension: valor_micro7 {
    type: number
    sql: ${TABLE}.ValorMicro7 ;;
  }

  dimension: valor_micro8 {
    type: number
    sql: ${TABLE}.ValorMicro8 ;;
  }

  dimension: valor_micro9 {
    type: number
    sql: ${TABLE}.ValorMicro9 ;;
  }

  dimension: valor_moto {
    type: number
    sql: ${TABLE}.ValorMoto ;;
  }

  dimension: valor_moto10 {
    type: number
    sql: ${TABLE}.ValorMoto10 ;;
  }

  dimension: valor_moto11 {
    type: number
    sql: ${TABLE}.ValorMoto11 ;;
  }

  dimension: valor_moto12 {
    type: number
    sql: ${TABLE}.ValorMoto12 ;;
  }

  dimension: valor_moto13 {
    type: number
    sql: ${TABLE}.ValorMoto13 ;;
  }

  dimension: valor_moto14 {
    type: number
    sql: ${TABLE}.ValorMoto14 ;;
  }

  dimension: valor_moto15 {
    type: number
    sql: ${TABLE}.ValorMoto15 ;;
  }

  dimension: valor_moto2 {
    type: number
    sql: ${TABLE}.ValorMoto2 ;;
  }

  dimension: valor_moto3 {
    type: number
    sql: ${TABLE}.ValorMoto3 ;;
  }

  dimension: valor_moto4 {
    type: number
    sql: ${TABLE}.ValorMoto4 ;;
  }

  dimension: valor_moto5 {
    type: number
    sql: ${TABLE}.ValorMoto5 ;;
  }

  dimension: valor_moto6 {
    type: number
    sql: ${TABLE}.ValorMoto6 ;;
  }

  dimension: valor_moto7 {
    type: number
    sql: ${TABLE}.ValorMoto7 ;;
  }

  dimension: valor_moto8 {
    type: number
    sql: ${TABLE}.ValorMoto8 ;;
  }

  dimension: valor_moto9 {
    type: number
    sql: ${TABLE}.ValorMoto9 ;;
  }
  measure: count {
    type: count
  }
}
