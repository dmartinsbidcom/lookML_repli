# The name of this view in Looker is "Cvbna"
view: cvbna {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2orbit.cvbna` ;;

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

  dimension: datos_cvbna {
    type: string
    sql: ${TABLE}.DatosCVBNA ;;
  }

  dimension: fecha_pago_cvbna {
    type: number
    sql: ${TABLE}.FechaPagoCVBNA ;;
  }

  dimension: hora_pago_cvbna {
    type: string
    sql: ${TABLE}.HoraPagoCVBNA ;;
  }

  dimension: id_cvarchivo {
    type: number
    sql: ${TABLE}.idCVArchivo ;;
  }

  dimension: id_cvbna {
    type: number
    sql: ${TABLE}.idCVBNA ;;
  }

  dimension: sub_orden_cvbna {
    type: number
    sql: ${TABLE}.SubOrdenCVBNA ;;
  }

  dimension: tipo_mkt_cvbna {
    type: number
    sql: ${TABLE}.TipoMktCVBNA ;;
  }

  dimension: tomado_cvbna {
    type: number
    sql: ${TABLE}.TomadoCVBNA ;;
  }

  dimension: total_con_intereses_cvbna {
    type: number
    sql: ${TABLE}.TotalConInteresesCVBNA ;;
  }

  dimension: total_cvbna {
    type: number
    sql: ${TABLE}.TotalCVBNA ;;
  }
  measure: count {
    type: count
  }
}
