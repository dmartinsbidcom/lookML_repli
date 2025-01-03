# The name of this view in Looker is "Ds Checkoutbidcom Cliente"
view: ds_checkoutbidcom_cliente {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_checkoutbidcom.Cliente` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Aclaraciones" in Explore.

  dimension: aclaraciones {
    type: string
    sql: ${TABLE}.Aclaraciones ;;
  }

  dimension: apellido {
    type: string
    sql: ${TABLE}.Apellido ;;
  }

  dimension: ciudad {
    type: string
    sql: ${TABLE}.Ciudad ;;
  }

  dimension: cp {
    type: string
    sql: ${TABLE}.CP ;;
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

  dimension: dia_entrega {
    type: string
    sql: ${TABLE}.DiaEntrega ;;
  }

  dimension: direccion {
    type: string
    sql: ${TABLE}.Direccion ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: empresa_micro {
    type: string
    sql: ${TABLE}.EmpresaMicro ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_alta {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.FechaAlta ;;
  }

  dimension: horario_entrega {
    type: string
    sql: ${TABLE}.HorarioEntrega ;;
  }

  dimension: id_cliente {
    type: number
    sql: ${TABLE}.IdCliente ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  dimension: nombre_recibe {
    type: string
    sql: ${TABLE}.NombreRecibe ;;
  }

  dimension: nombre_retira {
    type: string
    sql: ${TABLE}.NombreRetira ;;
  }

  dimension: pais {
    type: string
    sql: ${TABLE}.Pais ;;
  }

  dimension: provincia {
    type: string
    sql: ${TABLE}.Provincia ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.Telefono ;;
  }

  dimension: terminal_destino {
    type: string
    sql: ${TABLE}.TerminalDestino ;;
  }
  measure: count {
    type: count
  }
}
