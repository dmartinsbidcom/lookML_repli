# The name of this view in Looker is "Ds Presupuestos Domicilios"
view: ds_presupuestos_domicilios {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.domicilios` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Calle Domicilio" in Explore.

  dimension: calle_domicilio {
    type: string
    sql: ${TABLE}.calleDomicilio ;;
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

  dimension: departamento_domicilio {
    type: string
    sql: ${TABLE}.departamentoDomicilio ;;
  }

  dimension: entre_calle_1_domicilio {
    type: string
    sql: ${TABLE}.Entre_Calle_1_Domicilio ;;
  }

  dimension: entre_calle_2_domicilio {
    type: string
    sql: ${TABLE}.Entre_Calle_2_Domicilio ;;
  }

  dimension: id_domicilio {
    type: number
    sql: ${TABLE}.idDomicilio ;;
  }

  dimension: id_localidad {
    type: number
    sql: ${TABLE}.idLocalidad ;;
  }

  dimension: numero_domicilio {
    type: string
    sql: ${TABLE}.numeroDomicilio ;;
  }

  dimension: piso_domicilio {
    type: string
    sql: ${TABLE}.pisoDomicilio ;;
  }

  dimension: telefono_domicilio {
    type: string
    sql: ${TABLE}.telefonoDomicilio ;;
  }
  measure: count {
    type: count
  }
}
