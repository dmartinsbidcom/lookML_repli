# The name of this view in Looker is "Raw Datos 60"
view: raw_datos_60 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_publicidad_ML.raw_datos_60` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Acosinversin Ingresos" in Explore.

  dimension: acosinversin_ingresos {
    type: number
    sql: ${TABLE}.`ACOSInversión_Ingresos` ;;
  }

  dimension: campaa {
    type: string
    sql: ${TABLE}.`Campaña` ;;
  }

  dimension: clics {
    type: number
    sql: ${TABLE}.Clics ;;
  }

  dimension: cpc_costo_por_clic {
    type: number
    sql: ${TABLE}.CPC_Costo_por_clic ;;
  }

  dimension: ctrclick_through_rate {
    type: number
    sql: ${TABLE}.CTRClick_Through_Rate ;;
  }

  dimension: cvrconvertion_rate {
    type: number
    sql: ${TABLE}.CVRConvertion_rate ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: desde {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Desde ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }

  dimension_group: hasta {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Hasta ;;
  }

  dimension: impresiones {
    type: number
    sql: ${TABLE}.Impresiones ;;
  }

  dimension: ingresos_moneda_local {
    type: number
    sql: ${TABLE}.IngresosMoneda_Local ;;
  }

  dimension: ingresos_por_ventas_directas_moneda_local {
    type: number
    sql: ${TABLE}.Ingresos_por_ventas_directasMoneda_Local ;;
  }

  dimension: ingresos_por_ventas_indirectas_moneda_local {
    type: number
    sql: ${TABLE}.Ingresos_por_ventas_indirectasMoneda_Local ;;
  }

  dimension: inversin_moneda_local {
    type: number
    sql: ${TABLE}.`InversiónMoneda_Local` ;;
  }

  dimension: nmero_de_publicacin {
    type: string
    sql: ${TABLE}.`Número_de_publicación` ;;
  }

  dimension: roasingresos_inversin {
    type: number
    sql: ${TABLE}.`ROASIngresos_Inversión` ;;
  }

  dimension: ttulo_de_anuncio {
    type: string
    sql: ${TABLE}.`Título_de_anuncio` ;;
  }

  dimension: ventas_directas {
    type: number
    sql: ${TABLE}.Ventas_directas ;;
  }

  dimension: ventas_indirectas {
    type: number
    sql: ${TABLE}.Ventas_indirectas ;;
  }

  dimension: ventas_por_publicidad_directas_indirectas {
    type: number
    sql: ${TABLE}.Ventas_por_publicidadDirectas_Indirectas ;;
  }
  measure: count {
    type: count
  }
}
