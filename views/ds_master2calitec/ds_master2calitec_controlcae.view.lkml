# The name of this view in Looker is "Ds Master2calitec Controlcae"
view: ds_master2calitec_controlcae {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2calitec.controlcae` ;;

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

  dimension: enprocesocontrolcae {
    type: number
    sql: ${TABLE}.enprocesocontrolcae ;;
  }

  dimension: fechacontrolcae {
    type: number
    sql: ${TABLE}.fechacontrolcae ;;
  }

  dimension: horacontrolcae {
    type: string
    sql: ${TABLE}.horacontrolcae ;;
  }

  dimension: idcontrolcae {
    type: number
    sql: ${TABLE}.idcontrolcae ;;
  }

  dimension: idun {
    type: number
    sql: ${TABLE}.idun ;;
  }

  dimension: letracontrolcae {
    type: string
    sql: ${TABLE}.letracontrolcae ;;
  }

  dimension: pvcontrolcae {
    type: number
    sql: ${TABLE}.pvcontrolcae ;;
  }

  dimension: tipocontrolcae {
    type: string
    sql: ${TABLE}.tipocontrolcae ;;
  }

  dimension: usuariocontrolcae {
    type: string
    sql: ${TABLE}.usuariocontrolcae ;;
  }
  measure: count {
    type: count
  }
}
