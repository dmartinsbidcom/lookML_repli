# The name of this view in Looker is "Cvpayway"
view: cvpayway {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2orbit.cvpayway` ;;

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

  dimension: datos_cvpay_way {
    type: string
    sql: ${TABLE}.DatosCVPayWay ;;
  }

  dimension: estado_cvpay_way {
    type: string
    sql: ${TABLE}.EstadoCVPayWay ;;
  }

  dimension: fecha_cvpay_way {
    type: number
    sql: ${TABLE}.FechaCVPayWay ;;
  }

  dimension: hora_cvpay_way {
    type: string
    sql: ${TABLE}.HoraCVPayWay ;;
  }

  dimension: id_cvarchivo {
    type: number
    sql: ${TABLE}.idCVArchivo ;;
  }

  dimension: id_cvpay_way {
    type: number
    sql: ${TABLE}.idCVPayWay ;;
  }

  dimension: id_oper_cvpay_way {
    type: string
    sql: ${TABLE}.idOperCVPayWay ;;
  }

  dimension: tomado_cvpay_way {
    type: number
    sql: ${TABLE}.TomadoCVPayWay ;;
  }
  measure: count {
    type: count
  }
}
