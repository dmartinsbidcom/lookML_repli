# The name of this view in Looker is "Dbempresas"
view: dbempresas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2orbit.dbempresas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Clave Certificado" in Explore.

  dimension: clave_certificado {
    type: string
    sql: ${TABLE}.ClaveCertificado ;;
  }

  dimension: clave_certificado_exportacion {
    type: string
    sql: ${TABLE}.ClaveCertificadoExportacion ;;
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

  dimension: habilitar_fe {
    type: number
    sql: ${TABLE}.HabilitarFE ;;
  }

  dimension: id_db_empresa {
    type: number
    sql: ${TABLE}.idDbEmpresa ;;
  }

  dimension: imprime_comprobante_cuando_obtiene_cae {
    type: number
    sql: ${TABLE}.ImprimeComprobanteCuandoObtieneCAE ;;
  }

  dimension: nombre_dbempresa {
    type: string
    sql: ${TABLE}.NombreDBEmpresa ;;
  }

  dimension: nombre_empresa {
    type: string
    sql: ${TABLE}.NombreEmpresa ;;
  }

  dimension: path_archivo_xml {
    type: string
    sql: ${TABLE}.PathArchivoXML ;;
  }

  dimension: path_certificado_afip {
    type: string
    sql: ${TABLE}.PathCertificadoAFIP ;;
  }

  dimension: path_certificado_afipexportacion {
    type: string
    sql: ${TABLE}.PathCertificadoAFIPExportacion ;;
  }

  dimension: path_certificado_ocx {
    type: string
    sql: ${TABLE}.PathCertificadoOCX ;;
  }

  dimension: path_certificado_ocxexportacion {
    type: string
    sql: ${TABLE}.PathCertificadoOCXExportacion ;;
  }

  dimension: punto_de_venta1 {
    type: string
    sql: ${TABLE}.PuntoDeVenta1 ;;
  }

  dimension: punto_de_venta10 {
    type: string
    sql: ${TABLE}.PuntoDeVenta10 ;;
  }

  dimension: punto_de_venta2 {
    type: string
    sql: ${TABLE}.PuntoDeVenta2 ;;
  }

  dimension: punto_de_venta3 {
    type: string
    sql: ${TABLE}.PuntoDeVenta3 ;;
  }

  dimension: punto_de_venta4 {
    type: string
    sql: ${TABLE}.PuntoDeVenta4 ;;
  }

  dimension: punto_de_venta5 {
    type: string
    sql: ${TABLE}.PuntoDeVenta5 ;;
  }

  dimension: punto_de_venta6 {
    type: string
    sql: ${TABLE}.PuntoDeVenta6 ;;
  }

  dimension: punto_de_venta7 {
    type: string
    sql: ${TABLE}.PuntoDeVenta7 ;;
  }

  dimension: punto_de_venta8 {
    type: string
    sql: ${TABLE}.PuntoDeVenta8 ;;
  }

  dimension: punto_de_venta9 {
    type: string
    sql: ${TABLE}.PuntoDeVenta9 ;;
  }

  dimension: sincroniza_pctas_db_empresa {
    type: number
    sql: ${TABLE}.SincronizaPCtasDbEmpresa ;;
  }
  measure: count {
    type: count
  }
}
