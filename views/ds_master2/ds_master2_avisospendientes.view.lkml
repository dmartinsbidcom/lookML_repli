# The name of this view in Looker is "Ds Master2 Avisospendientes"
view: ds_master2_avisospendientes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2.avisospendientes` ;;

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

  dimension: desde_facturacion_aviso {
    type: number
    sql: ${TABLE}.DesdeFacturacionAviso ;;
  }

  dimension: fecha_aviso {
    type: number
    sql: ${TABLE}.FechaAviso ;;
  }

  dimension: id_aviso {
    type: number
    sql: ${TABLE}.idAviso ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.idComprobante ;;
  }

  dimension: id_usuario_destino {
    type: number
    sql: ${TABLE}.IdUsuarioDestino ;;
  }

  dimension: id_usuario_origen {
    type: number
    sql: ${TABLE}.IdUsuarioOrigen ;;
  }

  dimension: motivorechazoaviso {
    type: number
    sql: ${TABLE}.motivorechazoaviso ;;
  }

  dimension: pvcomprobante {
    type: number
    sql: ${TABLE}.PVComprobante ;;
  }

  dimension: texto_aviso {
    type: string
    sql: ${TABLE}.TextoAviso ;;
  }

  dimension: textorechazoaviso {
    type: string
    sql: ${TABLE}.textorechazoaviso ;;
  }

  dimension: tipo_aviso {
    type: number
    sql: ${TABLE}.TipoAviso ;;
  }
  measure: count {
    type: count
  }
}
