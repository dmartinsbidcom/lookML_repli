# The name of this view in Looker is "Ds Master2contable Admdefoperaciones"
view: ds_master2contable_admdefoperaciones {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2contable.admdefoperaciones` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Admite Multi Empresas Def Operacion" in Explore.

  dimension: admite_multi_empresas_def_operacion {
    type: number
    sql: ${TABLE}.AdmiteMultiEmpresasDefOperacion ;;
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

  dimension: formato_impresion_def_operacion {
    type: number
    sql: ${TABLE}.FormatoImpresionDefOperacion ;;
  }

  dimension: id_def_operacion {
    type: number
    sql: ${TABLE}.IdDefOperacion ;;
  }

  dimension: id_def_operacion_sinc {
    type: number
    sql: ${TABLE}.IdDefOperacionSinc ;;
  }

  dimension: id_un {
    type: number
    sql: ${TABLE}.IdUN ;;
  }

  dimension: nombre_def_operacion {
    type: string
    sql: ${TABLE}.NombreDefOperacion ;;
  }

  dimension: pide_una_ccdef_operacion {
    type: number
    sql: ${TABLE}.PideUnaCCDefOperacion ;;
  }

  dimension: pide_una_empresa_def_operacion {
    type: number
    sql: ${TABLE}.PideUnaEmpresaDefOperacion ;;
  }

  dimension: sector_def_operacion {
    type: number
    sql: ${TABLE}.SectorDefOperacion ;;
  }

  dimension: sin_empresa_def_operacion {
    type: number
    sql: ${TABLE}.SinEmpresaDefOperacion ;;
  }

  dimension: sincroniza_con_web_def_operacion {
    type: number
    sql: ${TABLE}.SincronizaConWebDefOperacion ;;
  }
  measure: count {
    type: count
  }
}
