# The name of this view in Looker is "Ds Master2bemotec Admimputaciontipo"
view: ds_master2bemotec_admimputaciontipo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bemotec.admimputaciontipo` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Abreviatura Adm Imputacion Tipo" in Explore.

  dimension: abreviatura_adm_imputacion_tipo {
    type: string
    sql: ${TABLE}.AbreviaturaAdmImputacionTipo ;;
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

  dimension: descripcion_adm_imputacion_tipo {
    type: string
    sql: ${TABLE}.DescripcionAdmImputacionTipo ;;
  }

  dimension: id_adm_imputacion_tipo {
    type: number
    sql: ${TABLE}.IdAdmImputacionTipo ;;
  }

  dimension: sigla_adm_imputacion_tipo {
    type: string
    sql: ${TABLE}.SiglaAdmImputacionTipo ;;
  }
  measure: count {
    type: count
  }
}
