# The name of this view in Looker is "Borelprodrepu"
view: borelprodrepu {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2operativo.borelprodrepu` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Datastream Metadata Source Timestamp" in Explore.

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

  dimension: fechaaltaborelprodrepu {
    type: number
    sql: ${TABLE}.fechaaltaborelprodrepu ;;
  }

  dimension: idboproducto {
    type: number
    sql: ${TABLE}.idboproducto ;;
  }

  dimension: idborelprodrepu {
    type: number
    sql: ${TABLE}.idborelprodrepu ;;
  }

  dimension: idborepuesto {
    type: number
    sql: ${TABLE}.idborepuesto ;;
  }

  dimension: idusuario {
    type: number
    sql: ${TABLE}.idusuario ;;
  }

  dimension: inhabilitadoborelprodrepu {
    type: number
    sql: ${TABLE}.inhabilitadoborelprodrepu ;;
  }

  dimension: validadoborelprodrepu {
    type: number
    sql: ${TABLE}.validadoborelprodrepu ;;
  }
  measure: count {
    type: count
  }
}
