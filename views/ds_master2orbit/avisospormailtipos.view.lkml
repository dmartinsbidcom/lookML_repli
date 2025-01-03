# The name of this view in Looker is "Avisospormailtipos"
view: avisospormailtipos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2orbit.avisospormailtipos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Activo Aviso Por Mail Tipo" in Explore.

  dimension: activo_aviso_por_mail_tipo {
    type: number
    sql: ${TABLE}.ActivoAvisoPorMailTipo ;;
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

  dimension: desc_aviso_por_mail_tipo {
    type: string
    sql: ${TABLE}.DescAvisoPorMailTipo ;;
  }

  dimension: id_aviso_por_mail_tipo {
    type: number
    sql: ${TABLE}.idAvisoPorMailTipo ;;
  }

  dimension: observaciones_aviso_por_mail_tipo {
    type: string
    sql: ${TABLE}.ObservacionesAvisoPorMailTipo ;;
  }
  measure: count {
    type: count
  }
}
