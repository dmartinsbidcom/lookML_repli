# The name of this view in Looker is "Bodomicilios"
view: bodomicilios {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bidcombo.bodomicilios` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Calle Bodomicilio" in Explore.

  dimension: calle_bodomicilio {
    type: string
    sql: ${TABLE}.CalleBODomicilio ;;
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

  dimension: departamento_bodomicilio {
    type: string
    sql: ${TABLE}.DepartamentoBODomicilio ;;
  }

  dimension: entre_calle1_bodomicilio {
    type: string
    sql: ${TABLE}.EntreCalle1BODomicilio ;;
  }

  dimension: entre_calle2_bodomicilio {
    type: string
    sql: ${TABLE}.EntreCalle2BODomicilio ;;
  }

  dimension: id_boagenda {
    type: number
    sql: ${TABLE}.idBOAgenda ;;
  }

  dimension: id_bodomicilio {
    type: number
    sql: ${TABLE}.idBODomicilio ;;
  }

  dimension: mcid_domicilio {
    type: number
    sql: ${TABLE}.MCidDomicilio ;;
  }

  dimension: mcid_localidad {
    type: number
    sql: ${TABLE}.MCidLocalidad ;;
  }

  dimension: mcid_provincia {
    type: number
    sql: ${TABLE}.MCIdProvincia ;;
  }

  dimension: numero_bodomicilio {
    type: number
    sql: ${TABLE}.NumeroBODomicilio ;;
  }

  dimension: observaciones_bopvdomicilio {
    type: string
    sql: ${TABLE}.ObservacionesBOPVDomicilio ;;
  }

  dimension: piso_bodomicilio {
    type: number
    sql: ${TABLE}.PisoBODomicilio ;;
  }

  dimension: telefono_bodomicilio {
    type: string
    sql: ${TABLE}.TelefonoBODomicilio ;;
  }
  measure: count {
    type: count
  }
}
