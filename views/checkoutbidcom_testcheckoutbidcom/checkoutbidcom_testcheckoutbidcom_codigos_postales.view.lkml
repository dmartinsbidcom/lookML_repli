# The name of this view in Looker is "Checkoutbidcom Testcheckoutbidcom Codigos Postales"
view: checkoutbidcom_testcheckoutbidcom_codigos_postales {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `checkoutbidcom_testcheckoutbidcom.codigos_postales` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Altura Desde" in Explore.

  dimension: altura_desde {
    type: number
    sql: ${TABLE}.Altura_Desde ;;
  }

  dimension: altura_hasta {
    type: number
    sql: ${TABLE}.Altura_Hasta ;;
  }

  dimension: amba {
    type: number
    sql: ${TABLE}.Amba ;;
  }

  dimension: barrio_comuna {
    type: number
    sql: ${TABLE}.Barrio_Comuna ;;
  }

  dimension: calles_altura {
    type: string
    sql: ${TABLE}.Calles_Altura ;;
  }

  dimension: codigo_pais {
    type: string
    sql: ${TABLE}.Codigo_Pais ;;
  }

  dimension: cp_id {
    type: string
    sql: ${TABLE}.CP_ID ;;
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

  dimension: habilitado {
    type: number
    sql: ${TABLE}.Habilitado ;;
  }

  dimension: id_provincia {
    type: number
    sql: ${TABLE}.Id_Provincia ;;
  }

  dimension: nombre_calle {
    type: string
    sql: ${TABLE}.Nombre_Calle ;;
  }

  dimension: nombre_ciudad {
    type: string
    sql: ${TABLE}.Nombre_Ciudad ;;
  }

  dimension: nombre_provincia {
    type: string
    sql: ${TABLE}.Nombre_Provincia ;;
  }

  dimension: plazo_entrega {
    type: number
    sql: ${TABLE}.plazo_entrega ;;
  }

  dimension: region {
    type: number
    sql: ${TABLE}.region ;;
  }
  measure: count {
    type: count
  }
}
