# The name of this view in Looker is "Data Base Mla Pads Report"
view: data_base_mla_pads_report {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_publicidad_ML.data_base_mla_pads_report` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Catalogo" in Explore.

  dimension: catalogo {
    type: string
    sql: ${TABLE}.catalogo ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }

  dimension: category_id {
    type: string
    sql: ${TABLE}.category_id ;;
  }

  dimension: costo_aprox_venta {
    type: number
    sql: ${TABLE}.costo_aprox_venta ;;
  }

  dimension: cr_30_dias {
    type: number
    sql: ${TABLE}.cr_30_dias ;;
  }

  dimension: cuenta {
    type: string
    sql: ${TABLE}.cuenta ;;
  }

  dimension: ddi {
    type: number
    sql: ${TABLE}.ddi ;;
  }

  dimension: estado_catalogo {
    type: string
    sql: ${TABLE}.estado_catalogo ;;
  }

  dimension: gmv_30_dias {
    type: number
    sql: ${TABLE}.gmv_30_dias ;;
  }

  dimension: gmv_7_dias {
    type: number
    sql: ${TABLE}.gmv_7_dias ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: mla {
    type: string
    sql: ${TABLE}.mla ;;
  }

  dimension: mla_relacionado_catalogo {
    type: string
    sql: ${TABLE}.mla_relacionado_catalogo ;;
  }

  dimension: mla_vinculado {
    type: string
    sql: ${TABLE}.mla_vinculado ;;
  }

  dimension: precio {
    type: number
    sql: ${TABLE}.precio ;;
  }

  dimension: puntos_pvp {
    type: number
    sql: ${TABLE}.puntos_pvp ;;
  }

  dimension: si_30_dias {
    type: number
    sql: ${TABLE}.si_30_dias ;;
  }

  dimension: si_7_dias {
    type: number
    sql: ${TABLE}.si_7_dias ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_pads {
    type: string
    sql: ${TABLE}.status_pads ;;
  }

  dimension: tienda_oficial {
    type: string
    sql: ${TABLE}.tienda_oficial ;;
  }

  dimension: tipo_compra {
    type: string
    sql: ${TABLE}.tipo_compra ;;
  }

  dimension: utilidad_unitaria {
    type: number
    sql: ${TABLE}.utilidad_unitaria ;;
  }

  dimension: visitas_30_dias {
    type: number
    sql: ${TABLE}.visitas_30_dias ;;
  }
  measure: count {
    type: count
  }
}
