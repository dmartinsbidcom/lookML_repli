# The name of this view in Looker is "Tlc Posicionarancelaria"
view: tlc_posicionarancelaria {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_tlc_admin_new.tlc_posicionarancelaria` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Alicuota Iva" in Explore.

  dimension: alicuota_iva {
    type: number
    sql: ${TABLE}.alicuota_iva ;;
  }

  dimension: bien_suntuario {
    type: number
    sql: ${TABLE}.bien_suntuario ;;
  }

  dimension: bk {
    type: number
    sql: ${TABLE}.bk ;;
  }

  dimension: con_estampilla {
    type: number
    sql: ${TABLE}.con_estampilla ;;
  }

  dimension: courier {
    type: number
    sql: ${TABLE}.courier ;;
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

  dimension: derechos_antidumping {
    type: number
    sql: ${TABLE}.derechos_antidumping ;;
  }

  dimension: derechos_importacion {
    type: number
    sql: ${TABLE}.derechos_importacion ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: farma {
    type: number
    sql: ${TABLE}.farma ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: impuestos_internos {
    type: number
    sql: ${TABLE}.impuestos_internos ;;
  }

  dimension: insumos {
    type: number
    sql: ${TABLE}.insumos ;;
  }

  dimension: intervencion_comentario {
    type: string
    sql: ${TABLE}.intervencion_comentario ;;
  }

  dimension: posicion_especifica {
    type: string
    sql: ${TABLE}.posicion_especifica ;;
  }

  dimension: posicion_general {
    type: string
    sql: ${TABLE}.posicion_general ;;
  }

  dimension: posicion_tram {
    type: string
    sql: ${TABLE}.posicion_tram ;;
  }

  dimension: res_1_2020 {
    type: string
    sql: ${TABLE}.res_1_2020 ;;
  }

  dimension: res_4674_2020 {
    type: string
    sql: ${TABLE}.res_4674_2020 ;;
  }

  dimension: tasa_estadistica {
    type: number
    sql: ${TABLE}.tasa_estadistica ;;
  }

  dimension: tipo_licencia {
    type: string
    sql: ${TABLE}.tipo_licencia ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ultima_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.ultima_actualizacion ;;
  }

  dimension: valor_criterio {
    type: number
    sql: ${TABLE}.valor_criterio ;;
  }

  dimension: valor_criterio_tipo {
    type: string
    sql: ${TABLE}.valor_criterio_tipo ;;
  }

  dimension: vinculado_con_pcram {
    type: number
    sql: ${TABLE}.vinculado_con_pcram ;;
  }
  measure: count {
    type: count
  }
}
