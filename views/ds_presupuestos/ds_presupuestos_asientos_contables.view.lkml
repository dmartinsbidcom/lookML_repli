# The name of this view in Looker is "Ds Presupuestos Asientos Contables"
view: ds_presupuestos_asientos_contables {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.asientos_contables` ;;

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

  dimension: debe_ohaber_asiento_contable {
    type: string
    sql: ${TABLE}.debeOHaberAsientoContable ;;
  }

  dimension: habilitado_para_admasiento_contable {
    type: number
    sql: ${TABLE}.habilitadoParaADMAsientoContable ;;
  }

  dimension: habilitado_para_comprasasiento_contable {
    type: number
    sql: ${TABLE}.habilitadoParaCOMPRASAsientoContable ;;
  }

  dimension: habilitado_para_facasiento_contable {
    type: number
    sql: ${TABLE}.habilitadoParaFACAsientoContable ;;
  }

  dimension: habilitado_para_ncasiento_contable {
    type: number
    sql: ${TABLE}.habilitadoParaNCAsientoContable ;;
  }

  dimension: habilitado_para_ndasiento_contable {
    type: number
    sql: ${TABLE}.habilitadoParaNDAsientoContable ;;
  }

  dimension: habilitado_para_stockasiento_contable {
    type: number
    sql: ${TABLE}.habilitadoParaSTOCKAsientoContable ;;
  }

  dimension: id_asiento_contable {
    type: number
    sql: ${TABLE}.idAsientoContable ;;
  }

  dimension: nombre_asiento_contable {
    type: string
    sql: ${TABLE}.nombreAsientoContable ;;
  }
  measure: count {
    type: count
  }
}
