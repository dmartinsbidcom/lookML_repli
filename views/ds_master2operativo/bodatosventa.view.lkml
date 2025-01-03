# The name of this view in Looker is "Bodatosventa"
view: bodatosventa {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2operativo.bodatosventa` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Calleclientebodatosventa" in Explore.

  dimension: calleclientebodatosventa {
    type: string
    sql: ${TABLE}.calleclientebodatosventa ;;
  }

  dimension: celularclientebodatosventa {
    type: string
    sql: ${TABLE}.celularclientebodatosventa ;;
  }

  dimension: condivaclientebodatosventa {
    type: number
    sql: ${TABLE}.condivaclientebodatosventa ;;
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

  dimension: dptoclientebodatosventa {
    type: string
    sql: ${TABLE}.dptoclientebodatosventa ;;
  }

  dimension: emailclientebodatosventa {
    type: string
    sql: ${TABLE}.emailclientebodatosventa ;;
  }

  dimension: empresacompextbodatosventa {
    type: string
    sql: ${TABLE}.empresacompextbodatosventa ;;
  }

  dimension: entrtecalle1clientebodatosventa {
    type: string
    sql: ${TABLE}.entrtecalle1clientebodatosventa ;;
  }

  dimension: entrtecalle2clientebodatosventa {
    type: string
    sql: ${TABLE}.entrtecalle2clientebodatosventa ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fechacompextbodatosventa {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechacompextbodatosventa ;;
  }

  dimension_group: fechaventabodatosventa {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fechaventabodatosventa ;;
  }

  dimension: idbodatosventa {
    type: number
    sql: ${TABLE}.idbodatosventa ;;
  }

  dimension: idboproducto {
    type: number
    sql: ${TABLE}.idboproducto ;;
  }

  dimension: idboreparacion {
    type: number
    sql: ${TABLE}.idboreparacion ;;
  }

  dimension: letracompextbodatosventa {
    type: string
    sql: ${TABLE}.letracompextbodatosventa ;;
  }

  dimension: localidadclientebodatosventa {
    type: string
    sql: ${TABLE}.localidadclientebodatosventa ;;
  }

  dimension: mcidcomprobante {
    type: number
    sql: ${TABLE}.mcidcomprobante ;;
  }

  dimension: mcidcomprobanteitem {
    type: number
    sql: ${TABLE}.mcidcomprobanteitem ;;
  }

  dimension: mesesgarantiabodatosventa {
    type: number
    sql: ${TABLE}.mesesgarantiabodatosventa ;;
  }

  dimension: nombreclientebodatosventa {
    type: string
    sql: ${TABLE}.nombreclientebodatosventa ;;
  }

  dimension: nroseriebodatosventa {
    type: string
    sql: ${TABLE}.nroseriebodatosventa ;;
  }

  dimension: numdocclientebodatosventa {
    type: string
    sql: ${TABLE}.numdocclientebodatosventa ;;
  }

  dimension: numeroclientebodatosventa {
    type: number
    sql: ${TABLE}.numeroclientebodatosventa ;;
  }

  dimension: numerocompextbodatosventa {
    type: number
    sql: ${TABLE}.numerocompextbodatosventa ;;
  }

  dimension: pisoclientebodatosventa {
    type: string
    sql: ${TABLE}.pisoclientebodatosventa ;;
  }

  dimension: pvcompextbodatosventa {
    type: number
    sql: ${TABLE}.pvcompextbodatosventa ;;
  }

  dimension: telefono1clientebodatosventa {
    type: string
    sql: ${TABLE}.telefono1clientebodatosventa ;;
  }

  dimension: telefono2clientebodatosventa {
    type: string
    sql: ${TABLE}.telefono2clientebodatosventa ;;
  }

  dimension: tipdocclientebodatosventa {
    type: number
    sql: ${TABLE}.tipdocclientebodatosventa ;;
  }

  dimension: tipocompextbodatosventa {
    type: string
    sql: ${TABLE}.tipocompextbodatosventa ;;
  }

  dimension: usuariomlclientebodatosventa {
    type: string
    sql: ${TABLE}.usuariomlclientebodatosventa ;;
  }
  measure: count {
    type: count
  }
}
