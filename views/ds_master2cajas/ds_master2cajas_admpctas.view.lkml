# The name of this view in Looker is "Ds Master2cajas Admpctas"
view: ds_master2cajas_admpctas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2cajas.admpctas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ajusta Xinflacion Pctas" in Explore.

  dimension: ajusta_xinflacion_pctas {
    type: number
    sql: ${TABLE}.AjustaXInflacionPCtas ;;
  }

  dimension: clasifadmpctas {
    type: number
    sql: ${TABLE}.Clasifadmpctas ;;
  }

  dimension: codigo_migrado {
    type: string
    sql: ${TABLE}.CodigoMigrado ;;
  }

  dimension: codigo_pctas {
    type: string
    sql: ${TABLE}.CodigoPCtas ;;
  }

  dimension: codjurisdiccionretencionrecibida {
    type: number
    sql: ${TABLE}.codjurisdiccionretencionrecibida ;;
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

  dimension: distccxdefectopctas {
    type: string
    sql: ${TABLE}.distccxdefectopctas ;;
  }

  dimension: id_pctas_padre {
    type: number
    sql: ${TABLE}.IdPCtasPadre ;;
  }

  dimension: idpctas {
    type: number
    sql: ${TABLE}.IDPCtas ;;
  }

  dimension: imputable_pctas {
    type: number
    sql: ${TABLE}.ImputablePCtas ;;
  }

  dimension: nombre_pctas {
    type: string
    sql: ${TABLE}.NombrePCtas ;;
  }

  dimension: pide_cantidad_pctas {
    type: number
    sql: ${TABLE}.PideCantidadPCtas ;;
  }

  dimension: tiene_ccosto {
    type: number
    sql: ${TABLE}.TieneCCosto ;;
  }

  dimension: tiene_devengamiento_pctas {
    type: number
    sql: ${TABLE}.TieneDevengamientoPCtas ;;
  }
  measure: count {
    type: count
  }
}
