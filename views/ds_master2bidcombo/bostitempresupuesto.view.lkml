# The name of this view in Looker is "Bostitempresupuesto"
view: bostitempresupuesto {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bidcombo.bostitempresupuesto` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cantidad Bo St Item Presupuesto" in Explore.

  dimension: cantidad_bo_st_item_presupuesto {
    type: number
    sql: ${TABLE}.CantidadBoStItemPresupuesto ;;
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

  dimension: idbo_st_item_presupuesto {
    type: number
    sql: ${TABLE}.idboStItemPresupuesto ;;
  }

  dimension: idboproducto {
    type: number
    sql: ${TABLE}.idboproducto ;;
  }

  dimension: idbopvnovedad {
    type: number
    sql: ${TABLE}.idbopvnovedad ;;
  }

  dimension: nombre_bo_st_item_presupuesto {
    type: string
    sql: ${TABLE}.NombreBoStItemPresupuesto ;;
  }

  dimension: precio_bo_st_item_presupuesto {
    type: number
    sql: ${TABLE}.PrecioBoStItemPresupuesto ;;
  }
  measure: count {
    type: count
  }
}
