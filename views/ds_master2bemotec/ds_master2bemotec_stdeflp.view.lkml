# The name of this view in Looker is "Ds Master2bemotec Stdeflp"
view: ds_master2bemotec_stdeflp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bemotec.stdeflp` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Agrega Nuevos St Def Lp" in Explore.

  dimension: agrega_nuevos_st_def_lp {
    type: number
    sql: ${TABLE}.AgregaNuevosStDefLP ;;
  }

  dimension: cod_alt_st_def_lp {
    type: string
    sql: ${TABLE}.CodAltStDefLP ;;
  }

  dimension: codigo_pctas_activo {
    type: string
    sql: ${TABLE}.CodigoPCtasActivo ;;
  }

  dimension: codigo_pctas_costo {
    type: string
    sql: ${TABLE}.CodigoPCtasCosto ;;
  }

  dimension: codigo_pctas_venta {
    type: string
    sql: ${TABLE}.CodigoPCtasVenta ;;
  }

  dimension: col_codigo_st_def_lp {
    type: number
    sql: ${TABLE}.ColCodigoStDefLP ;;
  }

  dimension: col_coefic_st_def_lp {
    type: number
    sql: ${TABLE}.ColCoeficStDefLP ;;
  }

  dimension: col_cos_pro_st_def_lp {
    type: number
    sql: ${TABLE}.ColCosProStDefLP ;;
  }

  dimension: col_cos_rep_st_def_lp {
    type: number
    sql: ${TABLE}.ColCosRepStDefLP ;;
  }

  dimension: col_cos_ucp_st_def_lp {
    type: number
    sql: ${TABLE}.ColCosUCpStDefLP ;;
  }

  dimension: col_costo_mest_def_lp {
    type: number
    sql: ${TABLE}.colCostoMEStDefLP ;;
  }

  dimension: col_descri_st_def_lp {
    type: number
    sql: ${TABLE}.ColDescriStDefLP ;;
  }

  dimension: col_equiva_st_def_lp {
    type: number
    sql: ${TABLE}.ColEquivaStDefLP ;;
  }

  dimension: col_nombre_st_def_lp {
    type: number
    sql: ${TABLE}.ColNombreStDefLP ;;
  }

  dimension: col_origen_st_def_lp {
    type: number
    sql: ${TABLE}.ColOrigenStDefLP ;;
  }

  dimension: col_precio_st_def_lp {
    type: number
    sql: ${TABLE}.ColPrecioStDefLP ;;
  }

  dimension: col_tivast_def_lp {
    type: number
    sql: ${TABLE}.ColTIVAStDefLP ;;
  }

  dimension: col_uni_med_st_def_lp {
    type: number
    sql: ${TABLE}.ColUniMedStDefLP ;;
  }

  dimension: costo_reposicion_mest_def_lp {
    type: number
    sql: ${TABLE}.costoReposicionMEStDefLP ;;
  }

  dimension: costo_ultima_compra_mest_def_lp {
    type: number
    sql: ${TABLE}.costoUltimaCompraMEStDefLP ;;
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

  dimension: descripcion_st_def_lp {
    type: string
    sql: ${TABLE}.DescripcionStDefLP ;;
  }

  dimension: en_mest_def_lp {
    type: number
    sql: ${TABLE}.EnMEStDefLP ;;
  }

  dimension: id_empresa {
    type: number
    sql: ${TABLE}.idEmpresa ;;
  }

  dimension: id_st_def_lp {
    type: number
    sql: ${TABLE}.idStDefLP ;;
  }

  dimension: id_st_par_ct_def {
    type: number
    sql: ${TABLE}.idStParCtDef ;;
  }

  dimension: modifica_marca_st_def_lp {
    type: number
    sql: ${TABLE}.ModificaMarcaStDefLP ;;
  }

  dimension: modifica_nombre_st_def_lp {
    type: number
    sql: ${TABLE}.ModificaNombreStDefLP ;;
  }

  dimension: numero_de_hoja_st_def_lp {
    type: number
    sql: ${TABLE}.NumeroDeHojaStDefLP ;;
  }

  dimension: primer_linea_st_def_lp {
    type: number
    sql: ${TABLE}.PrimerLineaStDefLP ;;
  }

  dimension: tip_act_cos_pro_st_def_lp {
    type: number
    sql: ${TABLE}.TipActCosProStDefLP ;;
  }

  dimension: tip_act_cos_rep_st_def_lp {
    type: number
    sql: ${TABLE}.TipActCosRepStDefLP ;;
  }

  dimension: tip_act_cos_ucp_st_def_lp {
    type: number
    sql: ${TABLE}.TipActCosUCpStDefLP ;;
  }

  dimension: tip_act_precio_st_def_lp {
    type: number
    sql: ${TABLE}.TipActPrecioStDefLP ;;
  }

  dimension: val_cos_pro_st_def_lp {
    type: number
    sql: ${TABLE}.ValCosProStDefLP ;;
  }

  dimension: val_cos_rep_st_def_lp {
    type: number
    sql: ${TABLE}.ValCosRepStDefLP ;;
  }

  dimension: val_cos_ucp_st_def_lp {
    type: number
    sql: ${TABLE}.ValCosUCpStDefLP ;;
  }

  dimension: val_precio_st_def_lp {
    type: number
    sql: ${TABLE}.ValPrecioStDefLP ;;
  }
  measure: count {
    type: count
  }
}
