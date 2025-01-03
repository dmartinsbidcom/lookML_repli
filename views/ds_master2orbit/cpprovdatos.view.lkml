# The name of this view in Looker is "Cpprovdatos"
view: cpprovdatos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2orbit.cpprovdatos` ;;

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

  dimension: esta_bloqueado {
    type: number
    sql: ${TABLE}.EstaBloqueado ;;
  }

  dimension: id_cp_prov_dato {
    type: number
    sql: ${TABLE}.idCpProvDato ;;
  }

  dimension: id_cp_prov_dom {
    type: number
    sql: ${TABLE}.idCpProvDom ;;
  }

  dimension: id_cp_prov_ficha {
    type: number
    sql: ${TABLE}.idCpProvFicha ;;
  }

  dimension: id_cp_tipo_prov_dato {
    type: number
    sql: ${TABLE}.idCpTipoProvDato ;;
  }

  dimension: texto_cp_prov_datos {
    type: string
    sql: ${TABLE}.TextoCpProvDatos ;;
  }
  measure: count {
    type: count
  }
}
