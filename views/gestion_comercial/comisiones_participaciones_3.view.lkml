# The name of this view in Looker is "Comisiones Participaciones 3"
view: comisiones_participaciones_3 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.comisiones_participaciones_3` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cant" in Explore.

  dimension: cant {
    type: string
    sql: ${TABLE}.Cant ;;
  }

  dimension: category_1 {
    type: string
    sql: ${TABLE}.`Category 1` ;;
  }

  dimension: category_2 {
    type: string
    sql: ${TABLE}.`Category 2` ;;
  }

  dimension: category_3 {
    type: string
    sql: ${TABLE}.`Category 3` ;;
  }

  dimension: codigo_comprobante_item {
    type: string
    sql: ${TABLE}.codigoComprobanteItem ;;
  }

  dimension: costo_impositivo {
    type: string
    sql: ${TABLE}.`Costo Impositivo` ;;
  }

  dimension: costo_tx_y_financiero {
    type: string
    sql: ${TABLE}.`Costo Tx y Financiero` ;;
  }

  dimension: costo_unitario_producto {
    type: string
    sql: ${TABLE}.`Costo Unitario Producto` ;;
  }

  dimension: costos_de_comercializacion {
    type: string
    sql: ${TABLE}.`Costos de Comercializacion` ;;
  }

  dimension: costos_logisticos {
    type: string
    sql: ${TABLE}.`Costos Logisticos` ;;
  }

  dimension: fecha2 {
    type: string
    sql: ${TABLE}.Fecha2 ;;
  }

  dimension: numero {
    type: string
    sql: ${TABLE}.Numero ;;
  }

  dimension: total_final {
    type: string
    sql: ${TABLE}.`Total Final` ;;
  }

  dimension: utilidad_calculo_participaciones {
    type: string
    sql: ${TABLE}.`Utilidad Calculo Participaciones` ;;
  }
  measure: count {
    type: count
  }
}
