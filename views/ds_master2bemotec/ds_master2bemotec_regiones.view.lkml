# The name of this view in Looker is "Ds Master2bemotec Regiones"
view: ds_master2bemotec_regiones {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bemotec.regiones` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo Pctas" in Explore.

  dimension: codigo_pctas {
    type: string
    sql: ${TABLE}.CodigoPCtas ;;
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

  dimension: exacto {
    type: number
    sql: ${TABLE}.exacto ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: id_idioma {
    type: number
    value_format_name: id
    sql: ${TABLE}.id_idioma ;;
  }

  dimension: id_pais {
    type: number
    sql: ${TABLE}.id_pais ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: porc_perc_iibb {
    type: number
    sql: ${TABLE}.PorcPercIIBB ;;
  }

  dimension: x {
    type: number
    sql: ${TABLE}.x ;;
  }

  dimension: y {
    type: number
    sql: ${TABLE}.y ;;
  }
  measure: count {
    type: count
  }
}
