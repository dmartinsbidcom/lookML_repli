# The name of this view in Looker is "Ds Master2empresas Stparct"
view: ds_master2empresas_stparct {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2empresas.stparct` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cuenta Activo St Par Ct" in Explore.

  dimension: cuenta_activo_st_par_ct {
    type: string
    sql: ${TABLE}.CuentaActivoStParCt ;;
  }

  dimension: cuenta_costo_st_par_ct {
    type: string
    sql: ${TABLE}.CuentaCostoStParCt ;;
  }

  dimension: cuenta_venta_st_par_ct {
    type: string
    sql: ${TABLE}.CuentaVentaStParCt ;;
  }

  dimension: cuenta_venta_taller_st_par_ct {
    type: string
    sql: ${TABLE}.CuentaVentaTallerStParCt ;;
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

  dimension: id_st_par_ct {
    type: number
    sql: ${TABLE}.idStParCt ;;
  }

  dimension: id_st_par_ct_def {
    type: number
    sql: ${TABLE}.idStParCtDef ;;
  }

  dimension: id_ta_sub_apertura {
    type: number
    sql: ${TABLE}.idTaSubApertura ;;
  }

  dimension: id_ta_taller {
    type: number
    sql: ${TABLE}.idTaTaller ;;
  }

  dimension: modulo_st_par_ct {
    type: string
    sql: ${TABLE}.ModuloStParCt ;;
  }
  measure: count {
    type: count
  }
}
