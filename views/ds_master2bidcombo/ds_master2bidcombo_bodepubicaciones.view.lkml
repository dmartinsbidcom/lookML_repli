# The name of this view in Looker is "Ds Master2bidcombo Bodepubicaciones"
view: ds_master2bidcombo_bodepubicaciones {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bidcombo.bodepubicaciones` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Alto Bodep Ubicacion" in Explore.

  dimension: alto_bodep_ubicacion {
    type: number
    sql: ${TABLE}.AltoBODepUbicacion ;;
  }

  dimension: ancho_bodep_ubicacion {
    type: number
    sql: ${TABLE}.AnchoBODepUbicacion ;;
  }

  dimension: codigobodepubicacion {
    type: string
    sql: ${TABLE}.codigobodepubicacion ;;
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

  dimension: id_bo_deposito {
    type: number
    sql: ${TABLE}.idBoDeposito ;;
  }

  dimension: id_bodep_ubicacion {
    type: number
    sql: ${TABLE}.idBODepUbicacion ;;
  }

  dimension: profundidad_bodep_ubicacion {
    type: number
    sql: ${TABLE}.ProfundidadBODepUbicacion ;;
  }

  dimension: sector_bodep_ubicacion {
    type: number
    sql: ${TABLE}.SectorBODepUbicacion ;;
  }
  measure: count {
    type: count
  }
}
