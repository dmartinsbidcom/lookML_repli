# The name of this view in Looker is "Ds Master2eucaforest Paises"
view: ds_master2eucaforest_paises {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2eucaforest.paises` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cuit Fisica Pais" in Explore.

  dimension: cuit_fisica_pais {
    type: string
    sql: ${TABLE}.CuitFisicaPais ;;
  }

  dimension: cuit_juridica_pais {
    type: string
    sql: ${TABLE}.CuitJuridicaPais ;;
  }

  dimension: cuit_otro_pais {
    type: string
    sql: ${TABLE}.CuitOtroPais ;;
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

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: id_idioma {
    type: number
    value_format_name: id
    sql: ${TABLE}.id_idioma ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: provincias {
    type: string
    sql: ${TABLE}.provincias ;;
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
