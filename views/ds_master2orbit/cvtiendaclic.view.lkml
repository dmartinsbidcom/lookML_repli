# The name of this view in Looker is "Cvtiendaclic"
view: cvtiendaclic {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2orbit.cvtiendaclic` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Banco Cv Clic" in Explore.

  dimension: banco_cv_clic {
    type: string
    sql: ${TABLE}.BancoCvClic ;;
  }

  dimension: bin_cv_clic {
    type: number
    sql: ${TABLE}.BinCvClic ;;
  }

  dimension: carrito_cv_clic {
    type: number
    sql: ${TABLE}.CarritoCvClic ;;
  }

  dimension: cliente_cv_clic {
    type: string
    sql: ${TABLE}.ClienteCvClic ;;
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

  dimension: dnicv_clic {
    type: string
    sql: ${TABLE}.DNICvClic ;;
  }

  dimension: entrega_cv_clic {
    type: string
    sql: ${TABLE}.EntregaCvClic ;;
  }

  dimension: error_cv_clic {
    type: string
    sql: ${TABLE}.ErrorCvClic ;;
  }

  dimension: estado_cv_clic {
    type: string
    sql: ${TABLE}.EstadoCvClic ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_cv_clic {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FechaCvClic ;;
  }

  dimension: id_cv_clic {
    type: number
    sql: ${TABLE}.idCvClic ;;
  }

  dimension: id_cvarchivo {
    type: number
    sql: ${TABLE}.idCVArchivo ;;
  }

  dimension: id_dato_cv_clic {
    type: number
    sql: ${TABLE}.idDatoCvClic ;;
  }

  dimension: nuevo_cliente_cv_clic {
    type: string
    sql: ${TABLE}.NuevoClienteCvClic ;;
  }

  dimension: pago_cv_clic {
    type: string
    sql: ${TABLE}.PagoCvClic ;;
  }

  dimension: referencia_cv_clic {
    type: string
    sql: ${TABLE}.ReferenciaCvClic ;;
  }

  dimension: tomado_cvclic {
    type: number
    sql: ${TABLE}.TomadoCVClic ;;
  }

  dimension: total_cv_clic {
    type: number
    sql: ${TABLE}.TotalCvClic ;;
  }

  dimension: transportista_cv_clic {
    type: string
    sql: ${TABLE}.TransportistaCvClic ;;
  }
  measure: count {
    type: count
  }
}
