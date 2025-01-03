# The name of this view in Looker is "Categoria Seo"
view: categoria_seo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_newhome.categoriaSEO` ;;

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

  dimension: estado_categoria_seo {
    type: number
    sql: ${TABLE}.estado_categoriaSEO ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_modificacion_categoria_seo {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_modificacion_categoriaSEO ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: id_categoria_seo {
    type: number
    sql: ${TABLE}.id_categoriaSEO ;;
  }

  dimension: texto_categoria_seo {
    type: string
    sql: ${TABLE}.texto_categoriaSEO ;;
  }

  dimension: titulo_categoria_seo {
    type: string
    sql: ${TABLE}.titulo_categoriaSEO ;;
  }

  dimension: usuario_modificacion_categoria_seo {
    type: string
    sql: ${TABLE}.usuario_modificacion_categoriaSEO ;;
  }
  measure: count {
    type: count
  }
}
