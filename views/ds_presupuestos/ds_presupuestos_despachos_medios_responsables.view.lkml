# The name of this view in Looker is "Ds Presupuestos Despachos Medios Responsables"
view: ds_presupuestos_despachos_medios_responsables {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.despachos_medios_responsables` ;;

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

  dimension: es_predeterminado_despacho_medio_responsable {
    type: number
    sql: ${TABLE}.esPredeterminadoDespachoMedioResponsable ;;
  }

  dimension: id_cc {
    type: number
    sql: ${TABLE}.idCC ;;
  }

  dimension: id_despacho_medio {
    type: number
    sql: ${TABLE}.idDespachoMedio ;;
  }

  dimension: id_despacho_medio_responsable {
    type: number
    sql: ${TABLE}.idDespachoMedioResponsable ;;
  }

  dimension: nombre_despacho_medio_responsable {
    type: string
    sql: ${TABLE}.nombreDespachoMedioResponsable ;;
  }
  measure: count {
    type: count
  }
}
