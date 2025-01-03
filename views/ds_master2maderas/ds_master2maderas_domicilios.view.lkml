# The name of this view in Looker is "Ds Master2maderas Domicilios"
view: ds_master2maderas_domicilios {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2maderas.domicilios` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Contacto1 Domicilio" in Explore.

  dimension: contacto1_domicilio {
    type: string
    sql: ${TABLE}.Contacto1Domicilio ;;
  }

  dimension: contacto2_domicilio {
    type: string
    sql: ${TABLE}.Contacto2Domicilio ;;
  }

  dimension: contacto3_domicilio {
    type: string
    sql: ${TABLE}.Contacto3Domicilio ;;
  }

  dimension: cpdomicilio {
    type: string
    sql: ${TABLE}.CPDomicilio ;;
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

  dimension: domicilio_domicilio {
    type: string
    sql: ${TABLE}.DomicilioDomicilio ;;
  }

  dimension: e_mail_domicilio {
    type: string
    sql: ${TABLE}.eMailDomicilio ;;
  }

  dimension: id_cot_localidad {
    type: number
    sql: ${TABLE}.idCotLocalidad ;;
  }

  dimension: id_domicilio {
    type: number
    sql: ${TABLE}.IdDomicilio ;;
  }

  dimension: id_empresa {
    type: number
    sql: ${TABLE}.IdEmpresa ;;
  }

  dimension: id_transporte {
    type: number
    sql: ${TABLE}.IdTransporte ;;
  }

  dimension: id_vendedor {
    type: number
    sql: ${TABLE}.idVendedor ;;
  }

  dimension: idcpprovdom {
    type: number
    sql: ${TABLE}.idcpprovdom ;;
  }

  dimension: localidad_domicilio {
    type: string
    sql: ${TABLE}.LocalidadDomicilio ;;
  }

  dimension: nombre_domicilio {
    type: string
    sql: ${TABLE}.NombreDomicilio ;;
  }

  dimension: pais_domicilio {
    type: string
    sql: ${TABLE}.PaisDomicilio ;;
  }

  dimension: partido_domicilio {
    type: string
    sql: ${TABLE}.PartidoDomicilio ;;
  }

  dimension: provincia_domicilio {
    type: string
    sql: ${TABLE}.ProvinciaDomicilio ;;
  }

  dimension: telefonos_domicilio {
    type: string
    sql: ${TABLE}.TelefonosDomicilio ;;
  }

  dimension: urldomicilio {
    type: string
    sql: ${TABLE}.URLDomicilio ;;
  }
  measure: count {
    type: count
  }
}
