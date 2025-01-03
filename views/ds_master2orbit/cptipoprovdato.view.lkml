# The name of this view in Looker is "Cptipoprovdato"
view: cptipoprovdato {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2orbit.cptipoprovdato` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Aplicacion Cp Tipo Prov Dato" in Explore.

  dimension: aplicacion_cp_tipo_prov_dato {
    type: number
    sql: ${TABLE}.AplicacionCpTipoProvDato ;;
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

  dimension: descripcion_cp_tipo_prov_dato {
    type: string
    sql: ${TABLE}.DescripcionCpTipoProvDato ;;
  }

  dimension: id_cp_tipo_prov_dato {
    type: number
    sql: ${TABLE}.idCpTipoProvDato ;;
  }

  dimension: modo_ingreso_cp_tipo_prov_dato {
    type: number
    sql: ${TABLE}.ModoIngresoCpTipoProvDato ;;
  }

  dimension: nombre_cp_tipo_prov_dato {
    type: string
    sql: ${TABLE}.NombreCpTipoProvDato ;;
  }
  measure: count {
    type: count
  }
}
