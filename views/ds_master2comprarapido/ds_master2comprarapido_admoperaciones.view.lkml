# The name of this view in Looker is "Ds Master2comprarapido Admoperaciones"
view: ds_master2comprarapido_admoperaciones {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2comprarapido.admoperaciones` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Anulada Operacion" in Explore.

  dimension: anulada_operacion {
    type: number
    sql: ${TABLE}.AnuladaOperacion ;;
  }

  dimension: auditoria_operacion {
    type: string
    sql: ${TABLE}.AuditoriaOperacion ;;
  }

  dimension: clave_comprobante_aguila {
    type: number
    sql: ${TABLE}.ClaveComprobanteAguila ;;
  }

  dimension: concepto_operacion {
    type: string
    sql: ${TABLE}.ConceptoOperacion ;;
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

  dimension: fecha_alta_operacion {
    type: number
    sql: ${TABLE}.FechaAltaOperacion ;;
  }

  dimension: fecha_operacion {
    type: number
    sql: ${TABLE}.FechaOperacion ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_operacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FechaOperacionDate ;;
  }

  dimension: fecha_ult_modificacion_operacion {
    type: number
    sql: ${TABLE}.FechaUltModificacionOperacion ;;
  }

  dimension: forma_de_pago_master {
    type: string
    sql: ${TABLE}.FormaDePagoMaster ;;
  }

  dimension: id_comprobante_master {
    type: string
    sql: ${TABLE}.idComprobanteMaster ;;
  }

  dimension: id_def_operacion {
    type: number
    sql: ${TABLE}.IdDefOperacion ;;
  }

  dimension: id_operacion {
    type: number
    sql: ${TABLE}.IdOperacion ;;
  }

  dimension: id_operacion_sinc {
    type: number
    sql: ${TABLE}.idOperacionSinc ;;
  }

  dimension: id_usuario {
    type: number
    sql: ${TABLE}.IdUsuario ;;
  }

  dimension: id_usuario_alta {
    type: number
    sql: ${TABLE}.idUsuarioAlta ;;
  }

  dimension: id_usuario_ult_modifico {
    type: number
    sql: ${TABLE}.idUsuarioUltModifico ;;
  }

  dimension: idcomprobantefacturado {
    type: number
    sql: ${TABLE}.idcomprobantefacturado ;;
  }

  dimension: nro_pago_operacion {
    type: string
    sql: ${TABLE}.NroPagoOperacion ;;
  }

  dimension: nroitemauxiliaroperacion {
    type: number
    sql: ${TABLE}.nroitemauxiliaroperacion ;;
  }

  dimension: numero_operacion {
    type: number
    sql: ${TABLE}.NumeroOperacion ;;
  }

  dimension: tipo_migracion_operacion {
    type: number
    sql: ${TABLE}.TipoMigracionOperacion ;;
  }
  measure: count {
    type: count
  }
}
