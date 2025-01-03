# The name of this view in Looker is "Aging Internacional Stock Nacionalizado"
view: aging_internacional_stock_nacionalizado {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `aging_internacional.stock_nacionalizado` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Aging Ponderado X SKU" in Explore.

  dimension: aging_ponderado_x_sku {
    type: string
    sql: ${TABLE}.`Aging Ponderado x SKU` ;;
  }

  dimension: aging_x_so {
    type: string
    sql: ${TABLE}.`Aging x SO` ;;
  }

  dimension: cantidad {
    type: string
    sql: ${TABLE}.Cantidad ;;
  }

  dimension: category_1 {
    type: string
    sql: ${TABLE}.`Category 1` ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}.Codigo ;;
  }

  dimension: costo_unitario_reposicion_cni {
    type: string
    sql: ${TABLE}.`Costo Unitario Reposicion CNI` ;;
  }

  dimension: costo_unitario_x_stock {
    type: string
    sql: ${TABLE}.`Costo Unitario x Stock` ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_de_arribo_a_aduana {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Fecha de arribo a Aduana` ;;
  }

  dimension_group: fecha_de_salida_de_aduana {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Fecha de salida de Aduana` ;;
  }

  dimension_group: fecha_final {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Fecha Final` ;;
  }

  dimension_group: fecha_oficializacion_final {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Fecha Oficializacion Final` ;;
  }

  dimension: id_stock_origen {
    type: string
    sql: ${TABLE}.`ID Stock Origen` ;;
  }

  dimension: ingresos_acumulados {
    type: string
    sql: ${TABLE}.`Ingresos Acumulados` ;;
  }

  dimension: m3_totales {
    type: string
    sql: ${TABLE}.`M3 Totales` ;;
  }

  dimension: m3_unitario {
    type: string
    sql: ${TABLE}.`M3 Unitario` ;;
  }

  dimension: numero_ingreso {
    type: string
    sql: ${TABLE}.`Numero Ingreso` ;;
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.Periodo ;;
  }

  dimension: periodon {
    type: string
    sql: ${TABLE}.Periodon ;;
  }

  dimension: peso_unitario_volumetrico_unitario {
    type: string
    sql: ${TABLE}.`Peso Unitario Volumetrico Unitario` ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: stock_final_por_so {
    type: string
    sql: ${TABLE}.`Stock FINAL por SO` ;;
  }

  dimension: stocks {
    type: string
    sql: ${TABLE}.Stocks ;;
  }
  measure: count {
    type: count
  }
}
