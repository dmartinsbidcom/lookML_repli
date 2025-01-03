# The name of this view in Looker is "Ds Presupuestos Percepcionesbidcom"
view: ds_presupuestos_percepcionesbidcom {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.percepcionesbidcom` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Bien De Uso Percepcion Bidcom" in Explore.

  dimension: bien_de_uso_percepcion_bidcom {
    type: number
    sql: ${TABLE}.BienDeUsoPercepcionBidcom ;;
  }

  dimension: cobrada_percepcion_bidcom {
    type: number
    sql: ${TABLE}.CobradaPercepcionBidcom ;;
  }

  dimension: cuit_percepcion_bidcom {
    type: string
    sql: ${TABLE}.CuitPercepcionBidcom ;;
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

  dimension: domicilio_percepcion_bidcom {
    type: string
    sql: ${TABLE}.DomicilioPercepcionBidcom ;;
  }

  dimension: factura_apercepcion_bidcom {
    type: number
    sql: ${TABLE}.FacturaAPercepcionBidcom ;;
  }

  dimension: fecha_grabacion_percepcion_bidcom {
    type: number
    sql: ${TABLE}.FechaGrabacionPercepcionBidcom ;;
  }

  dimension: hora_grabacion_percepcion_bidcom {
    type: string
    sql: ${TABLE}.HoraGrabacionPercepcionBidcom ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.idComprobante ;;
  }

  dimension: id_condicion_fiscal {
    type: number
    sql: ${TABLE}.idCondicionFiscal ;;
  }

  dimension: id_percepcion_bidcom {
    type: number
    sql: ${TABLE}.idPercepcionBidcom ;;
  }

  dimension: importe_neto {
    type: number
    sql: ${TABLE}.ImporteNeto ;;
  }

  dimension: importe_perc901 {
    type: number
    sql: ${TABLE}.ImportePerc901 ;;
  }

  dimension: importe_perc902 {
    type: number
    sql: ${TABLE}.ImportePerc902 ;;
  }

  dimension: importe_perc914 {
    type: number
    sql: ${TABLE}.ImportePerc914 ;;
  }

  dimension: localidad_percepcion_bidcom {
    type: string
    sql: ${TABLE}.LocalidadPercepcionBidcom ;;
  }

  dimension: migrada {
    type: number
    sql: ${TABLE}.Migrada ;;
  }

  dimension: nro_operacion_percepcion_bidcom {
    type: string
    sql: ${TABLE}.NroOperacionPercepcionBidcom ;;
  }

  dimension: provincia_percepcion_bidcom {
    type: string
    sql: ${TABLE}.ProvinciaPercepcionBidcom ;;
  }

  dimension: razon_social_percepcion_bidcom {
    type: string
    sql: ${TABLE}.RazonSocialPercepcionBidcom ;;
  }

  dimension: ruta_archivo_bien_de_uso {
    type: string
    sql: ${TABLE}.RutaArchivoBienDeUso ;;
  }
  measure: count {
    type: count
  }
}
