# The name of this view in Looker is "Ds Master2comprarapido Stcontadorconsultas"
view: ds_master2comprarapido_stcontadorconsultas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2comprarapido.stcontadorconsultas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ano St Contador Consultas" in Explore.

  dimension: ano_st_contador_consultas {
    type: number
    sql: ${TABLE}.AnoStContadorConsultas ;;
  }

  dimension: contador_mes1 {
    type: number
    sql: ${TABLE}.ContadorMes1 ;;
  }

  dimension: contador_mes10 {
    type: number
    sql: ${TABLE}.ContadorMes10 ;;
  }

  dimension: contador_mes11 {
    type: number
    sql: ${TABLE}.ContadorMes11 ;;
  }

  dimension: contador_mes12 {
    type: number
    sql: ${TABLE}.ContadorMes12 ;;
  }

  dimension: contador_mes2 {
    type: number
    sql: ${TABLE}.ContadorMes2 ;;
  }

  dimension: contador_mes3 {
    type: number
    sql: ${TABLE}.ContadorMes3 ;;
  }

  dimension: contador_mes4 {
    type: number
    sql: ${TABLE}.ContadorMes4 ;;
  }

  dimension: contador_mes5 {
    type: number
    sql: ${TABLE}.ContadorMes5 ;;
  }

  dimension: contador_mes6 {
    type: number
    sql: ${TABLE}.ContadorMes6 ;;
  }

  dimension: contador_mes7 {
    type: number
    sql: ${TABLE}.ContadorMes7 ;;
  }

  dimension: contador_mes8 {
    type: number
    sql: ${TABLE}.ContadorMes8 ;;
  }

  dimension: contador_mes9 {
    type: number
    sql: ${TABLE}.ContadorMes9 ;;
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

  dimension: id_st_contador_consultas {
    type: number
    sql: ${TABLE}.idStContadorConsultas ;;
  }

  dimension: id_st_producto {
    type: number
    sql: ${TABLE}.idStProducto ;;
  }
  measure: count {
    type: count
  }
}
