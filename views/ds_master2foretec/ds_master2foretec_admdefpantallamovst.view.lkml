# The name of this view in Looker is "Ds Master2foretec Admdefpantallamovst"
view: ds_master2foretec_admdefpantallamovst {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2foretec.admdefpantallamovst` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Admite Prestamo Def Pantalla Mov St" in Explore.

  dimension: admite_prestamo_def_pantalla_mov_st {
    type: number
    sql: ${TABLE}.AdmitePrestamoDefPantallaMovSt ;;
  }

  dimension: armar_kit_def_pantalla_mov_st {
    type: number
    sql: ${TABLE}.ArmarKitDefPantallaMovST ;;
  }

  dimension: cargar_empresa_def_pantalla_mov_st {
    type: number
    sql: ${TABLE}.CargarEmpresaDefPantallaMovSt ;;
  }

  dimension: contrapartida_imputacion_def_pantalla_mov_st {
    type: number
    sql: ${TABLE}.ContrapartidaImputacionDefPantallaMovST ;;
  }

  dimension: cta_contrapartida_def_pantalla_mov_st {
    type: string
    sql: ${TABLE}.CtaContrapartidaDefPantallaMovST ;;
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

  dimension: id_def_comprobante {
    type: number
    sql: ${TABLE}.IdDefComprobante ;;
  }

  dimension: id_def_pantalla_mov_st {
    type: number
    sql: ${TABLE}.IdDefPantallaMovST ;;
  }

  dimension: id_deposito_entrada {
    type: number
    sql: ${TABLE}.idDepositoEntrada ;;
  }

  dimension: id_deposito_salida {
    type: number
    sql: ${TABLE}.idDepositoSalida ;;
  }

  dimension: modifica_contrapartida_def_pantalla_mov_st {
    type: number
    sql: ${TABLE}.ModificaContrapartidaDefPantallaMovST ;;
  }

  dimension: sin_contrapartida_def_pantalla_mov_st {
    type: number
    sql: ${TABLE}.SinContrapartidaDefPantallaMovST ;;
  }

  dimension: tipo_def_pantalla_mov_st {
    type: number
    sql: ${TABLE}.TipoDefPantallaMovST ;;
  }
  measure: count {
    type: count
  }
}
