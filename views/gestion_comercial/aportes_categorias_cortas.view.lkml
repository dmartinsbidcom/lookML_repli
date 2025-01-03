# The name of this view in Looker is "Aportes Categorias Cortas"
view: aportes_categorias_cortas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.aportes_categorias_cortas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Categora" in Explore.

  dimension: categora {
    type: string
    sql: ${TABLE}.`Categoría` ;;
  }

  dimension: dod_12_x {
    type: string
    sql: ${TABLE}.`DOD 12X` ;;
  }

  dimension: dod_12_x_killers {
    type: string
    sql: ${TABLE}.`DOD 12X Killers` ;;
  }

  dimension: dod_3_x {
    type: string
    sql: ${TABLE}.`DOD 3X` ;;
  }

  dimension: dod_3_x_killers {
    type: string
    sql: ${TABLE}.`DOD 3X Killers` ;;
  }

  dimension: dod_6_x {
    type: string
    sql: ${TABLE}.`DOD 6X` ;;
  }

  dimension: dod_6_x_killers {
    type: string
    sql: ${TABLE}.`DOD 6X Killers` ;;
  }

  dimension: dod_9_x {
    type: string
    sql: ${TABLE}.`DOD 9X` ;;
  }

  dimension: dod_9_x_killers {
    type: string
    sql: ${TABLE}.`DOD 9X Killers` ;;
  }

  dimension: dod_clsica {
    type: string
    sql: ${TABLE}.`DOD Clásica` ;;
  }

  dimension: dod_clsica_killers {
    type: string
    sql: ${TABLE}.`DOD Clásica Killers` ;;
  }

  dimension: dxi_12_x_dod {
    type: string
    sql: ${TABLE}.`DXI 12X DOD` ;;
  }

  dimension: dxi_12_x_killers {
    type: string
    sql: ${TABLE}.`DXI 12X Killers` ;;
  }

  dimension: dxi_3_x_dod {
    type: string
    sql: ${TABLE}.`DXI 3X DOD` ;;
  }

  dimension: dxi_3_x_killers {
    type: string
    sql: ${TABLE}.`DXI 3X Killers` ;;
  }

  dimension: dxi_6_x_dod {
    type: string
    sql: ${TABLE}.`DXI 6X DOD` ;;
  }

  dimension: dxi_6_x_killers {
    type: string
    sql: ${TABLE}.`DXI 6X Killers` ;;
  }

  dimension: dxi_9_x_dod {
    type: string
    sql: ${TABLE}.`DXI 9X DOD` ;;
  }

  dimension: dxi_9_x_killers {
    type: string
    sql: ${TABLE}.`DXI 9X Killers` ;;
  }

  dimension: dxi_clsica_dod {
    type: string
    sql: ${TABLE}.`DXI Clásica DOD` ;;
  }

  dimension: dxi_clsica_killers {
    type: string
    sql: ${TABLE}.`DXI Clásica Killers` ;;
  }
  measure: count {
    type: count
  }
}
