# The name of this view in Looker is "Ds Master2cajas Ocenc"
view: ds_master2cajas_ocenc {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2cajas.ocenc` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo Activacion Formato" in Explore.

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

  dimension: descripcion_ocenc {
    type: string
    sql: ${TABLE}.DescripcionOCEnc ;;
  }

  dimension: domicilio_entrega_ocenc {
    type: string
    sql: ${TABLE}.DomicilioEntregaOCEnc ;;
  }

  dimension: estado_ocenc {
    type: number
    sql: ${TABLE}.EstadoOCEnc ;;
  }

  dimension: fecha_ocenc {
    type: number
    sql: ${TABLE}.FechaOCEnc ;;
  }

  dimension: forma_pago_ocenc {
    type: string
    sql: ${TABLE}.FormaPagoOCEnc ;;
  }

  dimension: id_domicilio {
    type: number
    sql: ${TABLE}.IdDomicilio ;;
  }

  dimension: id_domicilio_entrega {
    type: number
    sql: ${TABLE}.IdDomicilioEntrega ;;
  }

  dimension: id_empresa {
    type: number
    sql: ${TABLE}.idEmpresa ;;
  }

  dimension: id_formato {
    type: number
    sql: ${TABLE}.idFormato ;;
  }

  dimension: id_moneda {
    type: number
    sql: ${TABLE}.idMoneda ;;
  }

  dimension: id_ocenc {
    type: number
    sql: ${TABLE}.idOCEnc ;;
  }

  dimension: id_un {
    type: number
    sql: ${TABLE}.idUN ;;
  }

  dimension: id_usuario_autorizo_ocenc {
    type: number
    sql: ${TABLE}.idUsuarioAutorizoOCEnc ;;
  }

  dimension: id_usuario_genero_ocenc {
    type: number
    sql: ${TABLE}.idUsuarioGeneroOCEnc ;;
  }

  dimension: id_usuario_modifico_ocenc {
    type: number
    sql: ${TABLE}.idUsuarioModificoOCEnc ;;
  }

  dimension: localidad_entrega_ocenc {
    type: string
    sql: ${TABLE}.LocalidadEntregaOCEnc ;;
  }

  dimension: nombre_dom_entrega_ocenc {
    type: string
    sql: ${TABLE}.NombreDomEntregaOCEnc ;;
  }

  dimension: numero_ocenc {
    type: number
    sql: ${TABLE}.NumeroOCEnc ;;
  }

  dimension: provincia_entrega_ocenc {
    type: string
    sql: ${TABLE}.ProvinciaEntregaOCEnc ;;
  }

  dimension: recibida_ocenc {
    type: number
    sql: ${TABLE}.RecibidaOCEnc ;;
  }

  dimension: referencia_ocenc {
    type: string
    sql: ${TABLE}.ReferenciaOCEnc ;;
  }

  dimension: telefono_entrega_ocenc {
    type: string
    sql: ${TABLE}.TelefonoEntregaOCEnc ;;
  }
  measure: count {
    type: count
  }
}
