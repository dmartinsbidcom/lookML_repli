# The name of this view in Looker is "Cvbapro"
view: cvbapro {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2orbit.cvbapro` ;;

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

  dimension: datos_cvba_pro {
    type: string
    sql: ${TABLE}.DatosCVBaPro ;;
  }

  dimension: estado_entrega_cvba_pro {
    type: string
    sql: ${TABLE}.EstadoEntregaCVBaPro ;;
  }

  dimension: estado_pago_cvba_pro {
    type: string
    sql: ${TABLE}.EstadoPagoCVBaPro ;;
  }

  dimension: estado_pedido_cvba_pro {
    type: string
    sql: ${TABLE}.EstadoPedidoCVBaPro ;;
  }

  dimension: fecha_cvba_pro {
    type: number
    sql: ${TABLE}.FechaCVBaPro ;;
  }

  dimension: id_cvarchivo {
    type: number
    sql: ${TABLE}.idCVArchivo ;;
  }

  dimension: id_cvba_pro {
    type: number
    sql: ${TABLE}.idCVBaPro ;;
  }

  dimension: id_venta_canal_cvba_pro {
    type: string
    sql: ${TABLE}.idVentaCanalCVBaPro ;;
  }

  dimension: tomado_cvba_pro {
    type: number
    sql: ${TABLE}.TomadoCVBaPro ;;
  }

  dimension: total_cvba_pro {
    type: number
    sql: ${TABLE}.TotalCVBaPro ;;
  }
  measure: count {
    type: count
  }
}
