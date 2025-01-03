# The name of this view in Looker is "Ds Master2comprarapido Admun"
view: ds_master2comprarapido_admun {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2comprarapido.admun` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cuitun" in Explore.

  dimension: cuitun {
    type: string
    sql: ${TABLE}.CUITUN ;;
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

  dimension: domicilio_un {
    type: string
    sql: ${TABLE}.domicilioUN ;;
  }

  dimension: email_un {
    type: string
    sql: ${TABLE}.emailUN ;;
  }

  dimension: fechaprocesodepuracionun {
    type: number
    sql: ${TABLE}.fechaprocesodepuracionun ;;
  }

  dimension: fechaultimadepuracionun {
    type: number
    sql: ${TABLE}.fechaultimadepuracionun ;;
  }

  dimension: idreldefoperacioncomprobantedepuracion {
    type: number
    sql: ${TABLE}.idreldefoperacioncomprobantedepuracion ;;
  }

  dimension: idun {
    type: number
    sql: ${TABLE}.IDUN ;;
  }

  dimension: iibbun {
    type: string
    sql: ${TABLE}.IIBBUN ;;
  }

  dimension: inicio_act_un {
    type: number
    sql: ${TABLE}.inicioActUN ;;
  }

  dimension: ivaun {
    type: string
    sql: ${TABLE}.IVAUN ;;
  }

  dimension: liquida_impuestos_un {
    type: number
    sql: ${TABLE}.LiquidaImpuestosUN ;;
  }

  dimension: localidad_un {
    type: string
    sql: ${TABLE}.localidadUN ;;
  }

  dimension: nombre_un {
    type: string
    sql: ${TABLE}.NombreUN ;;
  }

  dimension: porcentaje_venta_un {
    type: number
    sql: ${TABLE}.PorcentajeVentaUN ;;
  }

  dimension: provincia_un {
    type: string
    sql: ${TABLE}.provinciaUN ;;
  }

  dimension: razon_social_un {
    type: string
    sql: ${TABLE}.razonSocialUN ;;
  }

  dimension: tel_un {
    type: string
    sql: ${TABLE}.telUN ;;
  }
  measure: count {
    type: count
  }
}
