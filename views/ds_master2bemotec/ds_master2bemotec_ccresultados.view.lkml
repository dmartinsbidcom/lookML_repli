# The name of this view in Looker is "Ds Master2bemotec Ccresultados"
view: ds_master2bemotec_ccresultados {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bemotec.ccresultados` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Activo Ccresultado" in Explore.

  dimension: activo_ccresultado {
    type: number
    sql: ${TABLE}.ActivoCCResultado ;;
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

  dimension: habitado_para_ccresultado {
    type: string
    sql: ${TABLE}.HabitadoParaCCResultado ;;
  }

  dimension: id_ccresultado {
    type: number
    sql: ${TABLE}.idCCResultado ;;
  }

  dimension: nombre_ccresultado {
    type: string
    sql: ${TABLE}.NombreCCResultado ;;
  }
  measure: count {
    type: count
  }
}
