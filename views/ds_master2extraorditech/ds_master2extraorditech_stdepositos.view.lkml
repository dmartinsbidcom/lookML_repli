# The name of this view in Looker is "Ds Master2extraorditech Stdepositos"
view: ds_master2extraorditech_stdepositos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2extraorditech.stdepositos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo Pctas Activo" in Explore.

  dimension: codigo_pctas_activo {
    type: string
    sql: ${TABLE}.CodigoPCtasActivo ;;
  }

  dimension: codigo_pctas_costo {
    type: string
    sql: ${TABLE}.CodigoPCtasCosto ;;
  }

  dimension: codigo_pctas_prestamo {
    type: string
    sql: ${TABLE}.CodigoPCtasPrestamo ;;
  }

  dimension: codigo_pctas_venta {
    type: string
    sql: ${TABLE}.CodigoPCtasVenta ;;
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

  dimension: id_st_deposito {
    type: number
    sql: ${TABLE}.idStDeposito ;;
  }

  dimension: id_st_deposito_sinc {
    type: number
    sql: ${TABLE}.idStDepositoSinc ;;
  }

  dimension: nombre_st_deposito {
    type: string
    sql: ${TABLE}.NombreStDeposito ;;
  }
  measure: count {
    type: count
  }
}
