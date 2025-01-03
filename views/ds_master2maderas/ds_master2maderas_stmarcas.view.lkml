# The name of this view in Looker is "Ds Master2maderas Stmarcas"
view: ds_master2maderas_stmarcas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2maderas.stmarcas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Actualiza Cat Web St Marca" in Explore.

  dimension: actualiza_cat_web_st_marca {
    type: number
    sql: ${TABLE}.ActualizaCatWebStMarca ;;
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

  dimension: id_st_marca {
    type: number
    sql: ${TABLE}.idStMarca ;;
  }

  dimension: marca_para_ipnst_marca {
    type: number
    sql: ${TABLE}.MarcaParaIPNStMarca ;;
  }

  dimension: nombre_st_marca {
    type: string
    sql: ${TABLE}.NombreStMarca ;;
  }
  measure: count {
    type: count
  }
}
