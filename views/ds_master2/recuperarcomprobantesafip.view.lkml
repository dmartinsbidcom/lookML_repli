# The name of this view in Looker is "Recuperarcomprobantesafip"
view: recuperarcomprobantesafip {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2.recuperarcomprobantesafip` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cae" in Explore.

  dimension: cae {
    type: string
    sql: ${TABLE}.CAE ;;
  }

  dimension: cuit {
    type: string
    sql: ${TABLE}.Cuit ;;
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

  dimension: encontrado {
    type: number
    sql: ${TABLE}.Encontrado ;;
  }

  dimension: fecha {
    type: number
    sql: ${TABLE}.Fecha ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: id_comprobante {
    type: number
    sql: ${TABLE}.idComprobante ;;
  }

  dimension: id_comprobante_recuperado {
    type: number
    sql: ${TABLE}.idComprobanteRecuperado ;;
  }

  dimension: iva {
    type: number
    sql: ${TABLE}.IVA ;;
  }

  dimension: letra {
    type: string
    sql: ${TABLE}.Letra ;;
  }

  dimension: neto {
    type: number
    sql: ${TABLE}.Neto ;;
  }

  dimension: numero {
    type: number
    sql: ${TABLE}.Numero ;;
  }

  dimension: pv {
    type: number
    sql: ${TABLE}.PV ;;
  }

  dimension: recuperado {
    type: number
    sql: ${TABLE}.Recuperado ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.Total ;;
  }

  dimension: vto {
    type: number
    sql: ${TABLE}.Vto ;;
  }
  measure: count {
    type: count
  }
}
