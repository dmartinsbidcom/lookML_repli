# The name of this view in Looker is "Ds Master2cabainnov Empresasexentasiibb"
view: ds_master2cabainnov_empresasexentasiibb {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2cabainnov.empresasexentasiibb` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Coef Cal Neto Empresa Exenta Iibb" in Explore.

  dimension: coef_cal_neto_empresa_exenta_iibb {
    type: number
    sql: ${TABLE}.CoefCalNetoEmpresaExentaIIBB ;;
  }

  dimension: coef_iibbsalta_empresa_exenta_iibb {
    type: number
    sql: ${TABLE}.CoefIIBBSaltaEmpresaExentaIIBB ;;
  }

  dimension: convenio_iibbsalta_empresa_exenta_iibb {
    type: number
    sql: ${TABLE}.ConvenioIIBBSaltaEmpresaExentaIIBB ;;
  }

  dimension: cuitempresa {
    type: string
    sql: ${TABLE}.CUITEmpresa ;;
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

  dimension: exento_empresa_exenta_iibb {
    type: number
    sql: ${TABLE}.ExentoEmpresaExentaIIBB ;;
  }

  dimension: exentopercbaimpuestos {
    type: number
    sql: ${TABLE}.exentopercbaimpuestos ;;
  }

  dimension: exentoperccabaimpuestos {
    type: number
    sql: ${TABLE}.exentoperccabaimpuestos ;;
  }

  dimension: exentopercmisionesimpuestos {
    type: number
    sql: ${TABLE}.exentopercmisionesimpuestos ;;
  }

  dimension: exentoretcbaimpuestos {
    type: number
    sql: ${TABLE}.exentoretcbaimpuestos ;;
  }

  dimension: exentoretccabaimpuestos {
    type: number
    sql: ${TABLE}.exentoretccabaimpuestos ;;
  }

  dimension: exentoretcmisionesimpuestos {
    type: number
    sql: ${TABLE}.exentoretcmisionesimpuestos ;;
  }

  dimension: fec_vig_por_esp_empresa_exenta_iibb {
    type: number
    sql: ${TABLE}.FecVigPorEspEmpresaExentaIIBB ;;
  }

  dimension: fecha_hasta_empresa_exenta_iibb {
    type: number
    sql: ${TABLE}.FechaHastaEmpresaExentaIIBB ;;
  }

  dimension: fechahastaexentoiibbbaimpuestos {
    type: number
    sql: ${TABLE}.fechahastaexentoiibbbaimpuestos ;;
  }

  dimension: fechahastaexentoiibbcabaimpuestos {
    type: number
    sql: ${TABLE}.fechahastaexentoiibbcabaimpuestos ;;
  }

  dimension: fechahastaexentoiibbmisionesimpuestos {
    type: number
    sql: ${TABLE}.fechahastaexentoiibbmisionesimpuestos ;;
  }

  dimension: fechahastaporcespperbaimpuestos {
    type: number
    sql: ${TABLE}.fechahastaporcespperbaimpuestos ;;
  }

  dimension: fechahastaporcesppercabaimpuestos {
    type: number
    sql: ${TABLE}.fechahastaporcesppercabaimpuestos ;;
  }

  dimension: fechahastaporcesppermisionesimpuestos {
    type: number
    sql: ${TABLE}.fechahastaporcesppermisionesimpuestos ;;
  }

  dimension: fechahastaporcespretbaimpuestos {
    type: number
    sql: ${TABLE}.fechahastaporcespretbaimpuestos ;;
  }

  dimension: fechahastaporcespretcabaimpuestos {
    type: number
    sql: ${TABLE}.fechahastaporcespretcabaimpuestos ;;
  }

  dimension: fechahastaporcespretmisionesimpuestos {
    type: number
    sql: ${TABLE}.fechahastaporcespretmisionesimpuestos ;;
  }

  dimension: id_empresa_exenta_iibb {
    type: number
    sql: ${TABLE}.IdEmpresaExentaIIBB ;;
  }

  dimension: id_ret_gcia_actividad {
    type: number
    sql: ${TABLE}.idRetGciaActividad ;;
  }

  dimension: por_esp_empresa_exenta_iibb {
    type: number
    sql: ${TABLE}.PorEspEmpresaExentaIIBB ;;
  }

  dimension: porcesppercbaimpuestos {
    type: number
    sql: ${TABLE}.porcesppercbaimpuestos ;;
  }

  dimension: porcespperccabaimpuestos {
    type: number
    sql: ${TABLE}.porcespperccabaimpuestos ;;
  }

  dimension: porcesppercmisionesimpuestos {
    type: number
    sql: ${TABLE}.porcesppercmisionesimpuestos ;;
  }

  dimension: porcespretcbaimpuestos {
    type: number
    sql: ${TABLE}.porcespretcbaimpuestos ;;
  }

  dimension: porcespretccabaimpuestos {
    type: number
    sql: ${TABLE}.porcespretccabaimpuestos ;;
  }

  dimension: porcespretcmisionesimpuestos {
    type: number
    sql: ${TABLE}.porcespretcmisionesimpuestos ;;
  }

  dimension: ret_gcia_exento_empresa_exenta_iibb {
    type: number
    sql: ${TABLE}.RetGciaExentoEmpresaExentaIIBB ;;
  }
  measure: count {
    type: count
  }
}
