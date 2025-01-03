# The name of this view in Looker is "Ds Presupuestos Despachos Metricas Detalle"
view: ds_presupuestos_despachos_metricas_detalle {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.despachos_metricas_detalle` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Altas" in Explore.

  dimension: altas {
    type: number
    sql: ${TABLE}.Altas ;;
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

  dimension: despachados {
    type: number
    sql: ${TABLE}.Despachados ;;
  }

  dimension: dia {
    type: string
    sql: ${TABLE}.Dia ;;
  }

  dimension: fecha {
    type: string
    sql: ${TABLE}.Fecha ;;
  }

  dimension: otros {
    type: number
    sql: ${TABLE}.Otros ;;
  }

  dimension: parte {
    type: string
    sql: ${TABLE}.Parte ;;
  }

  dimension: preparados {
    type: number
    sql: ${TABLE}.Preparados ;;
  }

  dimension: resumen {
    type: number
    sql: ${TABLE}.Resumen ;;
  }
  measure: count {
    type: count
  }
}
