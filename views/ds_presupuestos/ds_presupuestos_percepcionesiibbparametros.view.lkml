# The name of this view in Looker is "Ds Presupuestos Percepcionesiibbparametros"
view: ds_presupuestos_percepcionesiibbparametros {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.percepcionesiibbparametros` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Arbaneto Minimo" in Explore.

  dimension: arbaneto_minimo {
    type: number
    sql: ${TABLE}.ARBANetoMinimo ;;
  }

  dimension: arbaporc_maximo {
    type: number
    sql: ${TABLE}.ARBAPorcMaximo ;;
  }

  dimension: cabaneto_minimo {
    type: number
    sql: ${TABLE}.CABANetoMinimo ;;
  }

  dimension: cabaporc_maximo {
    type: number
    sql: ${TABLE}.CABAPorcMaximo ;;
  }

  dimension: cor_neto_minimo {
    type: number
    sql: ${TABLE}.CorNetoMinimo ;;
  }

  dimension: cor_porc_general {
    type: number
    sql: ${TABLE}.CorPorcGeneral ;;
  }

  dimension: cor_porc_mayorista_liquidos {
    type: number
    sql: ${TABLE}.CorPorcMayoristaLiquidos ;;
  }

  dimension: cor_porc_mayorista_tabaco {
    type: number
    sql: ${TABLE}.CorPorcMayoristaTabaco ;;
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

  dimension: habilita_en_facturacion {
    type: number
    sql: ${TABLE}.HabilitaEnFacturacion ;;
  }

  dimension: id_perc_iibbparam {
    type: number
    sql: ${TABLE}.idPercIIBBParam ;;
  }

  dimension: mis_monto_minimo_calculado {
    type: number
    sql: ${TABLE}.MisMontoMinimoCalculado ;;
  }

  dimension: mis_neto_minimo {
    type: number
    sql: ${TABLE}.MisNetoMinimo ;;
  }

  dimension: mis_porc_fijo {
    type: number
    sql: ${TABLE}.MisPorcFijo ;;
  }

  dimension: salta_porcentaje {
    type: number
    sql: ${TABLE}.SaltaPorcentaje ;;
  }

  dimension: slneto_minimo {
    type: number
    sql: ${TABLE}.SLNetoMinimo ;;
  }

  dimension: slporc_distribuidores {
    type: number
    sql: ${TABLE}.SLPorcDistribuidores ;;
  }

  dimension: slporc_general {
    type: number
    sql: ${TABLE}.SLPorcGeneral ;;
  }

  dimension: slporc_minoristas {
    type: number
    sql: ${TABLE}.SLPorcMinoristas ;;
  }

  dimension: tuc_neto_minimo {
    type: number
    sql: ${TABLE}.TucNetoMinimo ;;
  }

  dimension: tuc_perc_minima {
    type: number
    sql: ${TABLE}.TucPercMinima ;;
  }

  dimension: tuc_porc_padron_cero {
    type: number
    sql: ${TABLE}.TucPorcPadronCero ;;
  }

  dimension: valor_parametro {
    type: number
    sql: ${TABLE}.ValorParametro ;;
  }
  measure: count {
    type: count
  }
}
