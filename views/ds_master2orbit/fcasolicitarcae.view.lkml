# The name of this view in Looker is "Fcasolicitarcae"
view: fcasolicitarcae {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2orbit.fcasolicitarcae` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cant Fc A" in Explore.

  dimension: cant_fc_a {
    type: number
    sql: ${TABLE}.CantFcA ;;
  }

  dimension: cant_fc_b {
    type: number
    sql: ${TABLE}.CantFcB ;;
  }

  dimension: cant_nca {
    type: number
    sql: ${TABLE}.CantNCA ;;
  }

  dimension: cant_ncb {
    type: number
    sql: ${TABLE}.CantNCB ;;
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

  dimension: empresa {
    type: string
    sql: ${TABLE}.Empresa ;;
  }

  dimension: errores {
    type: number
    sql: ${TABLE}.Errores ;;
  }

  dimension: estado {
    type: number
    sql: ${TABLE}.Estado ;;
  }

  dimension: fecha_hora_pedido {
    type: string
    sql: ${TABLE}.FechaHoraPedido ;;
  }

  dimension: fecha_hora_procesado {
    type: string
    sql: ${TABLE}.FechaHoraProcesado ;;
  }

  dimension: id_fca_solicitar_cae {
    type: number
    sql: ${TABLE}.idFcaSolicitarCAE ;;
  }

  dimension: mcid_comprobante_str {
    type: string
    sql: ${TABLE}.MCidComprobanteStr ;;
  }
  measure: count {
    type: count
  }
}
