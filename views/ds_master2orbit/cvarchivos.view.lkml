# The name of this view in Looker is "Cvarchivos"
view: cvarchivos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2orbit.cvarchivos` ;;

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

  dimension: estado_cvarchivo {
    type: number
    sql: ${TABLE}.EstadoCVArchivo ;;
  }

  dimension: fecha_cvarchivo {
    type: number
    sql: ${TABLE}.FechaCVArchivo ;;
  }

  dimension: hora_cvarchivo {
    type: string
    sql: ${TABLE}.HoraCVArchivo ;;
  }

  dimension: id_cvarchivo {
    type: number
    sql: ${TABLE}.idCVArchivo ;;
  }

  dimension: id_usuario {
    type: number
    sql: ${TABLE}.idUsuario ;;
  }

  dimension: nombre_cvarchivo {
    type: string
    sql: ${TABLE}.NombreCVArchivo ;;
  }

  dimension: tipo_cvarchivo {
    type: number
    sql: ${TABLE}.TipoCVArchivo ;;
  }
  measure: count {
    type: count
  }
}
