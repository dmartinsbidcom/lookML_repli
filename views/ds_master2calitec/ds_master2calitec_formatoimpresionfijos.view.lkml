# The name of this view in Looker is "Ds Master2calitec Formatoimpresionfijos"
view: ds_master2calitec_formatoimpresionfijos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2calitec.formatoimpresionfijos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Alto Fifijo" in Explore.

  dimension: alto_fifijo {
    type: number
    sql: ${TABLE}.AltoFIFijo ;;
  }

  dimension: ancho_fifijo {
    type: number
    sql: ${TABLE}.AnchoFIFijo ;;
  }

  dimension: bolt_fifijo {
    type: number
    sql: ${TABLE}.BoltFIFijo ;;
  }

  dimension: cantidad_fifijo {
    type: number
    sql: ${TABLE}.CantidadFIFijo ;;
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

  dimension: id_fifijo {
    type: number
    sql: ${TABLE}.idFIFijo ;;
  }

  dimension: id_formato {
    type: number
    sql: ${TABLE}.idFormato ;;
  }

  dimension: letra_fifijo {
    type: string
    sql: ${TABLE}.LetraFIFijo ;;
  }

  dimension: pre_impreso_fifijo {
    type: number
    sql: ${TABLE}.PreImpresoFIFijo ;;
  }

  dimension: sfifijo {
    type: number
    sql: ${TABLE}.SFIFijo ;;
  }

  dimension: texto_fifijo {
    type: string
    sql: ${TABLE}.TextoFIFijo ;;
  }

  dimension: tipo_fifijo {
    type: number
    sql: ${TABLE}.TipoFIFijo ;;
  }

  dimension: xfifijo {
    type: number
    sql: ${TABLE}.XFIFijo ;;
  }

  dimension: yfifijo {
    type: number
    sql: ${TABLE}.YFIFijo ;;
  }
  measure: count {
    type: count
  }
}
