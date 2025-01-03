# The name of this view in Looker is "Ds Presupuestos Despachos Sucursales Obsoleta 20221013"
view: ds_presupuestos_despachos_sucursales_obsoleta_20221013 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_presupuestos.despachos_sucursales_obsoleta_20221013` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Altura Despacho Sucursal" in Explore.

  dimension: altura_despacho_sucursal {
    type: string
    sql: ${TABLE}.alturaDespachoSucursal ;;
  }

  dimension: calle_despacho_sucursal {
    type: string
    sql: ${TABLE}.calleDespachoSucursal ;;
  }

  dimension: codigo_chdespacho_sucursal {
    type: string
    sql: ${TABLE}.codigoCHDespachoSucursal ;;
  }

  dimension: codigo_despacho_sucursal {
    type: string
    sql: ${TABLE}.codigoDespachoSucursal ;;
  }

  dimension: codigo_postal_despacho_sucursal {
    type: number
    sql: ${TABLE}.codigoPostalDespachoSucursal ;;
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

  dimension: id_despacho_sucursal {
    type: number
    sql: ${TABLE}.idDespachoSucursal ;;
  }

  dimension: localidad_despacho_sucursal {
    type: string
    sql: ${TABLE}.localidadDespachoSucursal ;;
  }

  dimension: provincia_despacho_sucursal {
    type: string
    sql: ${TABLE}.provinciaDespachoSucursal ;;
  }
  measure: count {
    type: count
  }
}
