# The name of this view in Looker is "Attributes"
view: attributes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.attributes` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Categorias" in Explore.

  dimension: categorias {
    type: string
    sql: ${TABLE}.categorias ;;
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

  dimension: id_atributo {
    type: number
    sql: ${TABLE}.id_atributo ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: tipo_dato {
    type: string
    sql: ${TABLE}.tipo_dato ;;
  }

  dimension: tooltip {
    type: string
    sql: ${TABLE}.tooltip ;;
  }

  dimension: unidad {
    type: string
    sql: ${TABLE}.unidad ;;
  }

  dimension: visibilidad {
    type: string
    sql: ${TABLE}.visibilidad ;;
  }
  measure: count {
    type: count
  }
}
