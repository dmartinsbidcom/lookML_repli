# The name of this view in Looker is "Ds Master2empresas Admpantallasdecarga"
view: ds_master2empresas_admpantallasdecarga {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2empresas.admpantallasdecarga` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo Pantalla" in Explore.

  dimension: codigo_pantalla {
    type: number
    sql: ${TABLE}.CodigoPantalla ;;
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

  dimension: nombre_pantalla {
    type: string
    sql: ${TABLE}.NombrePantalla ;;
  }

  dimension: tipo_pantalla {
    type: number
    sql: ${TABLE}.TipoPantalla ;;
  }
  measure: count {
    type: count
  }
}
