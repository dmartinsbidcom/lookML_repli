# The name of this view in Looker is "Boagenda"
view: boagenda {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bidcombo.boagenda` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Celularboagenda" in Explore.

  dimension: celularboagenda {
    type: string
    sql: ${TABLE}.celularboagenda ;;
  }

  dimension: cond_ivaboagenda {
    type: number
    sql: ${TABLE}.CondIVABOAgenda ;;
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

  dimension: e_mail1_boagenda {
    type: string
    sql: ${TABLE}.eMail1BOAgenda ;;
  }

  dimension: e_mail2_boagenda {
    type: string
    sql: ${TABLE}.eMail2BOAgenda ;;
  }

  dimension: es_mayorista_boagenda {
    type: number
    sql: ${TABLE}.EsMayoristaBOAgenda ;;
  }

  dimension: id_boagenda {
    type: number
    sql: ${TABLE}.idBOAgenda ;;
  }

  dimension: mcid_agenda {
    type: number
    sql: ${TABLE}.MCidAgenda ;;
  }

  dimension: mcid_tipo_documento {
    type: number
    sql: ${TABLE}.MCidTipoDocumento ;;
  }

  dimension: nombre_boagenda {
    type: string
    sql: ${TABLE}.NombreBOAgenda ;;
  }

  dimension: numero_documento_boagenda {
    type: string
    sql: ${TABLE}.NumeroDocumentoBOAGenda ;;
  }

  dimension: razon_social_boagenda {
    type: string
    sql: ${TABLE}.RazonSocialBOAgenda ;;
  }

  dimension: telefono1_boagenda {
    type: string
    sql: ${TABLE}.Telefono1BOAgenda ;;
  }

  dimension: telefono2_boagenda {
    type: string
    sql: ${TABLE}.Telefono2BOAgenda ;;
  }

  dimension: tipoboagenda {
    type: number
    sql: ${TABLE}.tipoboagenda ;;
  }

  dimension: usuario_mlboagenda {
    type: string
    sql: ${TABLE}.UsuarioMLBOAgenda ;;
  }
  measure: count {
    type: count
  }
}
