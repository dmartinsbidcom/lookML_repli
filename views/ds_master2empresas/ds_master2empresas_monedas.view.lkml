# The name of this view in Looker is "Ds Master2empresas Monedas"
view: ds_master2empresas_monedas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2empresas.monedas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo Monedas" in Explore.

  dimension: codigo_monedas {
    type: string
    sql: ${TABLE}.codigoMonedas ;;
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

  dimension: id_moneda {
    type: number
    sql: ${TABLE}.IdMoneda ;;
  }

  dimension: nombre_moneda {
    type: string
    sql: ${TABLE}.NombreMoneda ;;
  }

  dimension: sigla_moneda {
    type: string
    sql: ${TABLE}.SiglaMoneda ;;
  }
  measure: count {
    type: count
  }
}
