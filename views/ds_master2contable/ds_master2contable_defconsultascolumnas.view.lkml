# The name of this view in Looker is "Ds Master2contable Defconsultascolumnas"
view: ds_master2contable_defconsultascolumnas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2contable.defconsultascolumnas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ancho Def Consultas Columna" in Explore.

  dimension: ancho_def_consultas_columna {
    type: number
    sql: ${TABLE}.AnchoDefConsultasColumna ;;
  }

  dimension: campo_def_consultas_columna {
    type: string
    sql: ${TABLE}.campoDefConsultasColumna ;;
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

  dimension: id_def_consulta {
    type: number
    sql: ${TABLE}.idDefConsulta ;;
  }

  dimension: id_def_consultas_columna {
    type: number
    sql: ${TABLE}.idDefConsultasColumna ;;
  }

  dimension: muestra_totaldefconsultascolumna {
    type: number
    sql: ${TABLE}.muestraTotaldefconsultascolumna ;;
  }

  dimension: nombre_def_consultas_columna {
    type: string
    sql: ${TABLE}.NombreDefConsultasColumna ;;
  }

  dimension: numero_def_consultas_columna {
    type: number
    sql: ${TABLE}.NumeroDefConsultasColumna ;;
  }

  dimension: tipo_def_consultas_columna {
    type: number
    sql: ${TABLE}.TipoDefConsultasColumna ;;
  }
  measure: count {
    type: count
  }
}
