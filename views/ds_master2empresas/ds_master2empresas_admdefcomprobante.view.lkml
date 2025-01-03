# The name of this view in Looker is "Ds Master2empresas Admdefcomprobante"
view: ds_master2empresas_admdefcomprobante {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2empresas.admdefcomprobante` ;;

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

  dimension: formato_impresion_def_comprobante {
    type: number
    sql: ${TABLE}.FormatoImpresionDefComprobante ;;
  }

  dimension: id_def_comprobante {
    type: number
    sql: ${TABLE}.IdDefComprobante ;;
  }

  dimension: id_def_comprobante_sinc {
    type: number
    sql: ${TABLE}.IdDefComprobanteSinc ;;
  }

  dimension: id_formato {
    type: number
    sql: ${TABLE}.IdFormato ;;
  }

  dimension: id_numerador1 {
    type: number
    sql: ${TABLE}.IdNumerador1 ;;
  }

  dimension: id_numerador10 {
    type: number
    sql: ${TABLE}.IdNumerador10 ;;
  }

  dimension: id_numerador2 {
    type: number
    sql: ${TABLE}.IdNumerador2 ;;
  }

  dimension: id_numerador3 {
    type: number
    sql: ${TABLE}.IdNumerador3 ;;
  }

  dimension: id_numerador4 {
    type: number
    sql: ${TABLE}.IdNumerador4 ;;
  }

  dimension: id_numerador5 {
    type: number
    sql: ${TABLE}.IdNumerador5 ;;
  }

  dimension: id_numerador6 {
    type: number
    sql: ${TABLE}.IdNumerador6 ;;
  }

  dimension: id_numerador7 {
    type: number
    sql: ${TABLE}.IdNumerador7 ;;
  }

  dimension: id_numerador8 {
    type: number
    sql: ${TABLE}.IdNumerador8 ;;
  }

  dimension: id_numerador9 {
    type: number
    sql: ${TABLE}.IdNumerador9 ;;
  }

  dimension: id_un {
    type: number
    sql: ${TABLE}.IdUN ;;
  }

  dimension: letra10_def_comprobante {
    type: string
    sql: ${TABLE}.Letra10DefComprobante ;;
  }

  dimension: letra1_def_comprobante {
    type: string
    sql: ${TABLE}.Letra1DefComprobante ;;
  }

  dimension: letra2_def_comprobante {
    type: string
    sql: ${TABLE}.Letra2DefComprobante ;;
  }

  dimension: letra3_def_comprobante {
    type: string
    sql: ${TABLE}.Letra3DefComprobante ;;
  }

  dimension: letra4_def_comprobante {
    type: string
    sql: ${TABLE}.Letra4DefComprobante ;;
  }

  dimension: letra5_def_comprobante {
    type: string
    sql: ${TABLE}.Letra5DefComprobante ;;
  }

  dimension: letra6_def_comprobante {
    type: string
    sql: ${TABLE}.Letra6DefComprobante ;;
  }

  dimension: letra7_def_comprobante {
    type: string
    sql: ${TABLE}.Letra7DefComprobante ;;
  }

  dimension: letra8_def_comprobante {
    type: string
    sql: ${TABLE}.Letra8DefComprobante ;;
  }

  dimension: letra9_def_comprobante {
    type: string
    sql: ${TABLE}.Letra9DefComprobante ;;
  }

  dimension: nombre_def_comprobante {
    type: string
    sql: ${TABLE}.NombreDefComprobante ;;
  }

  dimension: nombre_txtimpresion_def_comprobante {
    type: string
    sql: ${TABLE}.NombreTXTImpresionDefComprobante ;;
  }

  dimension: numeracion_manual_def_comprobante {
    type: number
    sql: ${TABLE}.NumeracionManualDefComprobante ;;
  }

  dimension: numeracion_propia_def_comprobante {
    type: number
    sql: ${TABLE}.NumeracionPropiaDefComprobante ;;
  }

  dimension: pantalla_carga_def_comprobante {
    type: number
    sql: ${TABLE}.PantallaCargaDefComprobante ;;
  }

  dimension: tipo_def_comprobante {
    type: string
    sql: ${TABLE}.TipoDefComprobante ;;
  }
  measure: count {
    type: count
  }
}
