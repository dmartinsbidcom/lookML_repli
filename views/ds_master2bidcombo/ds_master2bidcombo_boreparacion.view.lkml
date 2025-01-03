# The name of this view in Looker is "Ds Master2bidcombo Boreparacion"
view: ds_master2bidcombo_boreparacion {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bidcombo.boreparacion` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Comentariofinalizareparacioncalidad" in Explore.

  dimension: comentariofinalizareparacioncalidad {
    type: string
    sql: ${TABLE}.comentariofinalizareparacioncalidad ;;
  }

  dimension: comentariofinalizoboreparacion {
    type: string
    sql: ${TABLE}.comentariofinalizoboreparacion ;;
  }

  dimension: costo_bo_reparacion {
    type: number
    sql: ${TABLE}.CostoBoReparacion ;;
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

  dimension: en_garantia_bo_reparacion {
    type: number
    sql: ${TABLE}.EnGarantiaBoReparacion ;;
  }

  dimension: fechaestimadaboreparacion {
    type: number
    sql: ${TABLE}.fechaestimadaboreparacion ;;
  }

  dimension: id_bo_pv_novedad_apertura {
    type: number
    sql: ${TABLE}.idBoPvNovedadApertura ;;
  }

  dimension: id_bo_pv_novedad_cierre {
    type: number
    sql: ${TABLE}.idBoPvNovedadCierre ;;
  }

  dimension: id_bo_reparacion {
    type: number
    sql: ${TABLE}.idBoReparacion ;;
  }

  dimension: id_bo_st_falla1 {
    type: number
    sql: ${TABLE}.idBoStFalla1 ;;
  }

  dimension: id_bo_st_falla2 {
    type: number
    sql: ${TABLE}.idBoStFalla2 ;;
  }

  dimension: id_bo_st_falla3 {
    type: number
    sql: ${TABLE}.idBoStFalla3 ;;
  }

  dimension: id_bo_st_falla4 {
    type: number
    sql: ${TABLE}.idBoStFalla4 ;;
  }

  dimension: id_bo_st_falla5 {
    type: number
    sql: ${TABLE}.idBoStFalla5 ;;
  }

  dimension: id_bo_st_movimiento {
    type: number
    sql: ${TABLE}.idBoStMovimiento ;;
  }

  dimension: idboclasifproblema {
    type: number
    sql: ${TABLE}.idboclasifproblema ;;
  }

  dimension: idboreparacionorigen {
    type: number
    sql: ${TABLE}.idboreparacionorigen ;;
  }

  dimension: llegocompletoboreparacion {
    type: number
    sql: ${TABLE}.llegocompletoboreparacion ;;
  }

  dimension: mcid_gf {
    type: number
    sql: ${TABLE}.MCidGF ;;
  }

  dimension: mcid_reparacion {
    type: number
    sql: ${TABLE}.MCidReparacion ;;
  }

  dimension: mcidcomprobantegfgenerada {
    type: number
    sql: ${TABLE}.mcidcomprobantegfgenerada ;;
  }

  dimension: mcidgfgenerada {
    type: number
    sql: ${TABLE}.mcidgfgenerada ;;
  }

  dimension: motivo_bo_reparacion {
    type: string
    sql: ${TABLE}.MotivoBoReparacion ;;
  }

  dimension: numero_bo_reparacion {
    type: number
    sql: ${TABLE}.NumeroBoReparacion ;;
  }

  dimension: observ_interna_bo_reparacion {
    type: string
    sql: ${TABLE}.ObservInternaBoReparacion ;;
  }

  dimension: observ_visible_bo_reparacion {
    type: string
    sql: ${TABLE}.ObservVisibleBoReparacion ;;
  }

  dimension: origenboreparacion {
    type: number
    sql: ${TABLE}.origenboreparacion ;;
  }

  dimension: respproblemaboreparacion {
    type: number
    sql: ${TABLE}.respproblemaboreparacion ;;
  }

  dimension: sinrepuestosboreparacion {
    type: number
    sql: ${TABLE}.sinrepuestosboreparacion ;;
  }
  measure: count {
    type: count
  }
}
