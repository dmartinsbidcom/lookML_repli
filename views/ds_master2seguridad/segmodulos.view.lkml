# The name of this view in Looker is "Segmodulos"
view: segmodulos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2seguridad.segmodulos` ;;

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

  dimension: es_facturacion_seg_modulo {
    type: number
    sql: ${TABLE}.EsFacturacionSegModulo ;;
  }

  dimension: id_seg_modulo {
    type: number
    sql: ${TABLE}.idSegModulo ;;
  }

  dimension: nombre_seg_modulo {
    type: string
    sql: ${TABLE}.NombreSegModulo ;;
  }

  dimension: nombredbmodulosegmodulo {
    type: string
    sql: ${TABLE}.nombredbmodulosegmodulo ;;
  }

  dimension: pantalla_permisos_seg_modulo {
    type: number
    sql: ${TABLE}.PantallaPermisosSegModulo ;;
  }

  dimension: servidor_seg_modulo {
    type: string
    sql: ${TABLE}.ServidorSegModulo ;;
  }
  measure: count {
    type: count
  }
}
