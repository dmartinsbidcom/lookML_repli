# The name of this view in Looker is "Ds Master2contable Stclasificacionsimple"
view: ds_master2contable_stclasificacionsimple {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2contable.stclasificacionsimple` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cod Cla Aguila Std" in Explore.

  dimension: cod_cla_aguila_std {
    type: number
    sql: ${TABLE}.CodClaAguilaSTD ;;
  }

  dimension: cod_sub_cla_aguila_std {
    type: number
    sql: ${TABLE}.CodSubClaAguilaSTD ;;
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

  dimension: id_st_clasificacion_simple {
    type: number
    sql: ${TABLE}.idStClasificacionSimple ;;
  }

  dimension: nombre_st_clasificacion_simple {
    type: string
    sql: ${TABLE}.NombreStClasificacionSimple ;;
  }
  measure: count {
    type: count
  }
}
