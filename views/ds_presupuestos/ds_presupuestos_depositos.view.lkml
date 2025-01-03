# The name of this view in Looker is "Ds Presupuestos Depositos"
view: ds_presupuestos_depositos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.depositos` ;;

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
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_baja {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.Fecha_Baja ;;
  }

  dimension: id_bo_st_ubicacion_compras {
    type: number
    sql: ${TABLE}.idBoStUbicacionCompras ;;
  }

  dimension: id_bo_st_ubicacion_inventario {
    type: number
    sql: ${TABLE}.idBoStUbicacionInventario ;;
  }

  dimension: id_bo_st_ubicacion_transito {
    type: number
    sql: ${TABLE}.idBoStUbicacionTransito ;;
  }

  dimension: id_bo_st_ubicacion_ventas {
    type: number
    sql: ${TABLE}.idBoStUbicacionVentas ;;
  }

  dimension: id_deposito {
    type: number
    sql: ${TABLE}.idDeposito ;;
  }

  dimension: nombre_deposito {
    type: string
    sql: ${TABLE}.nombreDeposito ;;
  }
  measure: count {
    type: count
  }
}
