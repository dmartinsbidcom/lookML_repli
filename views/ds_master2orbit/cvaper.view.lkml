# The name of this view in Looker is "Cvaper"
view: cvaper {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2orbit.cvaper` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Banco Cvaper" in Explore.

  dimension: banco_cvaper {
    type: number
    sql: ${TABLE}.BancoCVAper ;;
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

  dimension: datos_cvaper {
    type: string
    sql: ${TABLE}.DatosCVAper ;;
  }

  dimension: fecha_cvaper {
    type: number
    sql: ${TABLE}.FechaCVAper ;;
  }

  dimension: hora_cvaper {
    type: string
    sql: ${TABLE}.HoraCVAper ;;
  }

  dimension: id_cart_cvaper {
    type: number
    sql: ${TABLE}.idCartCVAper ;;
  }

  dimension: id_cvaper {
    type: number
    sql: ${TABLE}.idCVAper ;;
  }

  dimension: id_cvarchivo {
    type: number
    sql: ${TABLE}.idCVArchivo ;;
  }

  dimension: id_planilla_cvaper {
    type: number
    sql: ${TABLE}.idPlanillaCVAper ;;
  }

  dimension: tomado_cvaper {
    type: number
    sql: ${TABLE}.TomadoCVAper ;;
  }
  measure: count {
    type: count
  }
}
