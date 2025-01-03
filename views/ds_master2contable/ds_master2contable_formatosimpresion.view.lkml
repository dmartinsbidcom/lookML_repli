# The name of this view in Looker is "Ds Master2contable Formatosimpresion"
view: ds_master2contable_formatosimpresion {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2contable.formatosimpresion` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Activar Conf Detalle Formtao" in Explore.

  dimension: activar_conf_detalle_formtao {
    type: number
    sql: ${TABLE}.ActivarConfDetalleFormtao ;;
  }

  dimension: asunto_mail_formato {
    type: string
    sql: ${TABLE}.AsuntoMailFormato ;;
  }

  dimension: codigo_activacion_formato {
    type: number
    sql: ${TABLE}.CodigoActivacionFormato ;;
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

  dimension: descripcion_formato {
    type: string
    sql: ${TABLE}.DescripcionFormato ;;
  }

  dimension: htmlmail_formato {
    type: string
    sql: ${TABLE}.HTMLMailFormato ;;
  }

  dimension: id_formato {
    type: number
    sql: ${TABLE}.idFormato ;;
  }

  dimension: imprime_fcy_rm_formato {
    type: number
    sql: ${TABLE}.ImprimeFcyRmFormato ;;
  }

  dimension: imprime_firma_formato {
    type: number
    sql: ${TABLE}.ImprimeFirmaFormato ;;
  }

  dimension: nombre_formato_web_formato {
    type: string
    sql: ${TABLE}.NombreFormatoWebFormato ;;
  }

  dimension: nombre_logo2_formato {
    type: string
    sql: ${TABLE}.nombreLogo2Formato ;;
  }

  dimension: nombre_logo_formato {
    type: string
    sql: ${TABLE}.NombreLogoFormato ;;
  }

  dimension: nombre_paquete_imagenes {
    type: string
    sql: ${TABLE}.nombrePaqueteImagenes ;;
  }

  dimension: numera_remito_formato {
    type: number
    sql: ${TABLE}.NumeraRemitoFormato ;;
  }

  dimension: pre_impreso_formato {
    type: number
    sql: ${TABLE}.PreImpresoFormato ;;
  }

  dimension: pvremito_formato {
    type: number
    sql: ${TABLE}.PVRemitoFormato ;;
  }

  dimension: tipo_formato {
    type: number
    sql: ${TABLE}.TipoFormato ;;
  }

  dimension: url_descarga_paquete_imagenes {
    type: string
    sql: ${TABLE}.urlDescargaPaqueteImagenes ;;
  }

  dimension: valores1_xformato {
    type: string
    sql: ${TABLE}.Valores1XFormato ;;
  }

  dimension: valores1_yformato {
    type: string
    sql: ${TABLE}.Valores1YFormato ;;
  }

  dimension: xlogo_imp2_formato {
    type: number
    sql: ${TABLE}.XLogoImp2Formato ;;
  }

  dimension: xlogo_imp_formato {
    type: number
    sql: ${TABLE}.XLogoImpFormato ;;
  }

  dimension: xlogo_pdf2_formato {
    type: number
    sql: ${TABLE}.XLogoPdf2Formato ;;
  }

  dimension: xlogo_pdf_formato {
    type: number
    sql: ${TABLE}.XLogoPdfFormato ;;
  }

  dimension: ylogo_imp2_formato {
    type: number
    sql: ${TABLE}.YLogoImp2Formato ;;
  }

  dimension: ylogo_imp_formato {
    type: number
    sql: ${TABLE}.YLogoImpFormato ;;
  }

  dimension: ylogo_pdf2_formato {
    type: number
    sql: ${TABLE}.YLogoPdf2Formato ;;
  }

  dimension: ylogo_pdf_formato {
    type: number
    sql: ${TABLE}.YLogoPdfFormato ;;
  }
  measure: count {
    type: count
  }
}
