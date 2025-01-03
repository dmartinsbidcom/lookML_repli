# The name of this view in Looker is "Exentosretgcias062024"
view: exentosretgcias062024 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_bidcom.exentosretgcias062024` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cuit" in Explore.

  dimension: cuit {
    type: string
    sql: ${TABLE}.Cuit ;;
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

  dimension: desde_fecha {
    type: number
    sql: ${TABLE}.DesdeFecha ;;
  }

  dimension: hasta_fecha {
    type: number
    sql: ${TABLE}.HastaFecha ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: nro_certificado {
    type: string
    sql: ${TABLE}.NroCertificado ;;
  }

  dimension: periodo {
    type: number
    sql: ${TABLE}.Periodo ;;
  }

  dimension: porcentaje {
    type: number
    sql: ${TABLE}.Porcentaje ;;
  }
  measure: count {
    type: count
  }
}
