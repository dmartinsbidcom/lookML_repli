# The name of this view in Looker is "Datos Personales Choferes"
view: datos_personales_choferes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.datos_personales_choferes` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Apellido" in Explore.

  dimension: apellido {
    type: string
    sql: ${TABLE}.apellido ;;
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

  dimension: direccion {
    type: string
    sql: ${TABLE}.direccion ;;
  }

  dimension: dni {
    type: string
    sql: ${TABLE}.dni ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: estado {
    type: number
    sql: ${TABLE}.estado ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: imagenes {
    type: string
    sql: ${TABLE}.imagenes ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }
  measure: count {
    type: count
  }
}
