# The name of this view in Looker is "Ds Presupuestos Percepcionesiibb"
view: ds_presupuestos_percepcionesiibb {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.percepcionesiibb` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Bien De Uso Percepcion Iibb" in Explore.

  dimension: bien_de_uso_percepcion_iibb {
    type: number
    sql: ${TABLE}.BienDeUsoPercepcionIIBB ;;
  }

  dimension: corrientes_cmpercepcion_iibb {
    type: number
    sql: ${TABLE}.CorrientesCMPercepcionIIBB ;;
  }

  dimension: corrientes_percepcion_iibb {
    type: number
    sql: ${TABLE}.CorrientesPercepcionIIBB ;;
  }

  dimension: cuit_percepcion_iibb {
    type: string
    sql: ${TABLE}.CuitPercepcionIIBB ;;
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

  dimension: exento_percepcion_iibb {
    type: string
    sql: ${TABLE}.ExentoPercepcionIIBB ;;
  }

  dimension: fecha_vto901_percepcion_iibb {
    type: number
    sql: ${TABLE}.FechaVto901PercepcionIIBB ;;
  }

  dimension: fecha_vto902_percepcion_iibb {
    type: number
    sql: ${TABLE}.FechaVto902PercepcionIIBB ;;
  }

  dimension: fecha_vto905_percepcion_iibb {
    type: number
    sql: ${TABLE}.FechaVto905PercepcionIIBB ;;
  }

  dimension: fecha_vto914_percepcion_iibb {
    type: number
    sql: ${TABLE}.FechaVto914PercepcionIIBB ;;
  }

  dimension: fecha_vto917_percepcion_iibb {
    type: number
    sql: ${TABLE}.FechaVto917PercepcionIIBB ;;
  }

  dimension: fecha_vto919_percepcion_iibb {
    type: number
    sql: ${TABLE}.FechaVto919PercepcionIIBB ;;
  }

  dimension: fecha_vto924_percepcion_iibb {
    type: number
    sql: ${TABLE}.FechaVto924PercepcionIIBB ;;
  }

  dimension: id_percepcion_iibb {
    type: number
    sql: ${TABLE}.idPercepcionIIBB ;;
  }

  dimension: inscripto_percepcion_iibb {
    type: string
    sql: ${TABLE}.InscriptoPercepcionIIBB ;;
  }

  dimension: nombre_percepcion_iibb {
    type: string
    sql: ${TABLE}.NombrePercepcionIIBB ;;
  }

  dimension: porc_esp901_percepcion_iibb {
    type: number
    sql: ${TABLE}.PorcEsp901PercepcionIIBB ;;
  }

  dimension: porc_esp902_percepcion_iibb {
    type: number
    sql: ${TABLE}.PorcEsp902PercepcionIIBB ;;
  }

  dimension: porc_esp905_percepcion_iibb {
    type: number
    sql: ${TABLE}.PorcEsp905PercepcionIIBB ;;
  }

  dimension: porc_esp914_percepcion_iibb {
    type: number
    sql: ${TABLE}.PorcEsp914PercepcionIIBB ;;
  }

  dimension: porc_esp917_percepcion_iibb {
    type: number
    sql: ${TABLE}.PorcEsp917PercepcionIIBB ;;
  }

  dimension: porc_esp919_percepcion_iibb {
    type: number
    sql: ${TABLE}.PorcEsp919PercepcionIIBB ;;
  }

  dimension: porc_esp924_percepcion_iibb {
    type: number
    sql: ${TABLE}.PorcEsp924PercepcionIIBB ;;
  }

  dimension: provincia_percepcion_iibb {
    type: string
    sql: ${TABLE}.ProvinciaPercepcionIIBB ;;
  }

  dimension: salta_cmpercepcion_iibb {
    type: number
    sql: ${TABLE}.SaltaCMPercepcionIIBB ;;
  }

  dimension: salta_coeficiente_percepcion_iibb {
    type: number
    sql: ${TABLE}.SaltaCoeficientePercepcionIIBB ;;
  }

  dimension: san_luis_percepcion_iibb {
    type: number
    sql: ${TABLE}.SanLuisPercepcionIIBB ;;
  }

  dimension: tel_contacto_percepcion_iibb {
    type: string
    sql: ${TABLE}.TelContactoPercepcionIIBB ;;
  }

  dimension: url_declaracion_jurada {
    type: string
    sql: ${TABLE}.urlDeclaracionJurada ;;
  }
  measure: count {
    type: count
  }
}
