# The name of this view in Looker is "Ds Master2cajas Admdefcc"
view: ds_master2cajas_admdefcc {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2cajas.admdefcc` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo Def Cc" in Explore.

  dimension: codigo_def_cc {
    type: number
    sql: ${TABLE}.CodigoDefCC ;;
  }

  dimension: codigo_pctas {
    type: string
    sql: ${TABLE}.CodigoPCtas ;;
  }

  dimension: codigo_pctas_anticipo {
    type: string
    sql: ${TABLE}.CodigoPCtasAnticipo ;;
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

  dimension: id_cta_parametrizada {
    type: number
    sql: ${TABLE}.IdCtaParametrizada ;;
  }

  dimension: id_def_cc {
    type: number
    sql: ${TABLE}.IdDefCC ;;
  }

  dimension: no_permite_facturar_taller_def_cc {
    type: number
    sql: ${TABLE}.NoPermiteFacturarTallerDefCC ;;
  }

  dimension: nombre_def_cc {
    type: string
    sql: ${TABLE}.NombreDefCC ;;
  }

  dimension: numerador_def_cc {
    type: number
    sql: ${TABLE}.NumeradorDefCC ;;
  }

  dimension: pide_boleto_por_defecto_def_cc {
    type: number
    sql: ${TABLE}.PideBoletoPorDefectoDefCC ;;
  }
  measure: count {
    type: count
  }
}
