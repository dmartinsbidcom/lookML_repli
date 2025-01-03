# The name of this view in Looker is "Ds Presupuestos Empresas"
view: ds_presupuestos_empresas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.empresas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cuit Empresa" in Explore.

  dimension: cuit_empresa {
    type: string
    sql: ${TABLE}.cuitEmpresa ;;
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

  dimension: entrega_garantias_empresa {
    type: number
    sql: ${TABLE}.entregaGarantiasEmpresa ;;
  }

  dimension: es_default_empresa {
    type: number
    sql: ${TABLE}.esDefaultEmpresa ;;
  }

  dimension: id_empresa {
    type: number
    sql: ${TABLE}.idEmpresa ;;
  }

  dimension: nombre_empresa {
    type: string
    sql: ${TABLE}.nombreEmpresa ;;
  }

  dimension: pv_empresa {
    type: string
    sql: ${TABLE}.pvEmpresa ;;
  }
  measure: count {
    type: count
  }
}
