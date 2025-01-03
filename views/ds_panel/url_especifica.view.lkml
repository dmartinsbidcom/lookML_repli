# The name of this view in Looker is "URL Especifica"
view: url_especifica {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.url_especifica` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Categoria" in Explore.

  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }

  dimension: categoria_gadnic {
    type: string
    sql: ${TABLE}.categoria_gadnic ;;
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

  dimension: descripcion_meta_bidcom {
    type: string
    sql: ${TABLE}.descripcion_meta_bidcom ;;
  }

  dimension: descripcion_meta_gadnic {
    type: string
    sql: ${TABLE}.descripcion_meta_gadnic ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: incluye_ref_usa {
    type: string
    sql: ${TABLE}.incluye_ref_usa ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: opcion {
    type: string
    sql: ${TABLE}.opcion ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: sku_excluidos {
    type: string
    sql: ${TABLE}.sku_excluidos ;;
  }

  dimension: sku_gadnic {
    type: string
    sql: ${TABLE}.sku_gadnic ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: titulo_meta_bidcom {
    type: string
    sql: ${TABLE}.titulo_meta_bidcom ;;
  }

  dimension: titulo_meta_gadnic {
    type: string
    sql: ${TABLE}.titulo_meta_gadnic ;;
  }
  measure: count {
    type: count
  }
}
