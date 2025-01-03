# The name of this view in Looker is "Atributos Aspiradoras"
view: atributos_aspiradoras {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.atributos_aspiradoras` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Accesorios Recambio" in Explore.

  dimension: accesorios_recambio {
    type: number
    sql: ${TABLE}.accesorios_recambio ;;
  }

  dimension: ajuste_velocidad_succion {
    type: number
    sql: ${TABLE}.ajuste_velocidad_succion ;;
  }

  dimension: app {
    type: number
    sql: ${TABLE}.app ;;
  }

  dimension: aspira {
    type: number
    sql: ${TABLE}.aspira ;;
  }

  dimension: capacidad_bateria {
    type: number
    sql: ${TABLE}.capacidad_bateria ;;
  }

  dimension: capacidad_deposito_agua {
    type: number
    sql: ${TABLE}.capacidad_deposito_agua ;;
  }

  dimension: capacidad_deposito_basura {
    type: number
    sql: ${TABLE}.capacidad_deposito_basura ;;
  }

  dimension: cepillo_central {
    type: number
    sql: ${TABLE}.cepillo_central ;;
  }

  dimension: cepillo_lateral {
    type: number
    sql: ${TABLE}.cepillo_lateral ;;
  }

  dimension: control_remoto {
    type: number
    sql: ${TABLE}.control_remoto ;;
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

  dimension: deposito_agua {
    type: number
    sql: ${TABLE}.deposito_agua ;;
  }

  dimension: deposito_basura {
    type: number
    sql: ${TABLE}.deposito_basura ;;
  }

  dimension: esterilizacion_uv {
    type: number
    sql: ${TABLE}.esterilizacion_uv ;;
  }

  dimension: mapeo_2d {
    type: number
    sql: ${TABLE}.mapeo_2d ;;
  }

  dimension: mopa {
    type: number
    sql: ${TABLE}.mopa ;;
  }

  dimension: motor {
    type: string
    sql: ${TABLE}.motor ;;
  }

  dimension: paredes_virtuales {
    type: number
    sql: ${TABLE}.paredes_virtuales ;;
  }

  dimension: peso_neto {
    type: number
    sql: ${TABLE}.peso_neto ;;
  }

  dimension: poder_succion {
    type: number
    sql: ${TABLE}.poder_succion ;;
  }

  dimension: programacion_dia_hora {
    type: number
    sql: ${TABLE}.programacion_dia_hora ;;
  }

  dimension: ruido {
    type: number
    sql: ${TABLE}.ruido ;;
  }

  dimension: sensor_anticaida {
    type: number
    sql: ${TABLE}.sensor_anticaida ;;
  }

  dimension: sensores_anticolision {
    type: number
    sql: ${TABLE}.sensores_anticolision ;;
  }

  dimension: sistema_recarga_automatica {
    type: number
    sql: ${TABLE}.sistema_recarga_automatica ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: superficie_trabajo {
    type: string
    sql: ${TABLE}.superficie_trabajo ;;
  }

  dimension: tiempo_trabajo {
    type: string
    sql: ${TABLE}.tiempo_trabajo ;;
  }

  dimension: trapea {
    type: number
    sql: ${TABLE}.trapea ;;
  }

  dimension: watts {
    type: number
    sql: ${TABLE}.watts ;;
  }
  measure: count {
    type: count
  }
}
