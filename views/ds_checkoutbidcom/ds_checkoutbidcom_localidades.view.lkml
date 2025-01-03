# The name of this view in Looker is "Ds Checkoutbidcom Localidades"
view: ds_checkoutbidcom_localidades {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_checkoutbidcom.localidades` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ca Localidad" in Explore.

  dimension: ca_localidad {
    type: number
    sql: ${TABLE}.caLocalidad ;;
  }

  dimension: cp_localidad {
    type: number
    sql: ${TABLE}.cpLocalidad ;;
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
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_baja_localidad {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaBajaLocalidad ;;
  }

  dimension: id_localidad {
    type: number
    sql: ${TABLE}.idLocalidad ;;
  }

  dimension: id_provincia {
    type: number
    sql: ${TABLE}.idProvincia ;;
  }

  dimension: nombre_localidad {
    type: string
    sql: ${TABLE}.nombreLocalidad ;;
  }

  dimension: zona_localidad {
    type: number
    sql: ${TABLE}.zonaLocalidad ;;
  }
  measure: count {
    type: count
  }
}
