# The name of this view in Looker is "Ds Presupuestos Ch Clientes"
view: ds_presupuestos_ch_clientes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.ch_clientes` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Apellido Chcliente" in Explore.

  dimension: apellido_chcliente {
    type: string
    sql: ${TABLE}.apellidoCHCliente ;;
  }

  dimension: calle_chcliente {
    type: string
    sql: ${TABLE}.calleCHCliente ;;
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

  dimension: departamento_chcliente {
    type: string
    sql: ${TABLE}.departamentoCHCliente ;;
  }

  dimension: email_chcliente {
    type: string
    sql: ${TABLE}.emailCHCliente ;;
  }

  dimension: id_chcliente {
    type: number
    sql: ${TABLE}.idCHCliente ;;
  }

  dimension: id_localidad {
    type: number
    sql: ${TABLE}.idLocalidad ;;
  }

  dimension: nombre_chcliente {
    type: string
    sql: ${TABLE}.nombreCHCliente ;;
  }

  dimension: numero_chcliente {
    type: number
    sql: ${TABLE}.numeroCHCliente ;;
  }

  dimension: piso_chcliente {
    type: number
    sql: ${TABLE}.pisoCHCliente ;;
  }

  dimension: telefono_chcliente {
    type: string
    sql: ${TABLE}.telefonoCHCliente ;;
  }
  measure: count {
    type: count
  }
}
