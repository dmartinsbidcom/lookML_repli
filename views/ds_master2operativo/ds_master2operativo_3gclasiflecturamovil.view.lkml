# The name of this view in Looker is "Ds Master2operativo 3gclasiflecturamovil"
view: ds_master2operativo_3gclasiflecturamovil {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2operativo.3gclasiflecturamovil` ;;

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

  dimension: id3_gmodulo_movil {
    type: number
    sql: ${TABLE}.id3GModuloMovil ;;
  }

  dimension: id_clasif_lectura_movil {
    type: number
    sql: ${TABLE}.idClasifLecturaMovil ;;
  }

  dimension: muestra_precio_vta_clasif_lectura_movil {
    type: number
    sql: ${TABLE}.MuestraPrecioVtaClasifLecturaMovil ;;
  }

  dimension: muestra_producto_clasif_lectura_movil {
    type: number
    sql: ${TABLE}.MuestraProductoClasifLecturaMovil ;;
  }

  dimension: nombre_clasif_lectura_movil {
    type: string
    sql: ${TABLE}.NombreClasifLecturaMovil ;;
  }

  dimension: nombre_dbclasif_lectura_movil {
    type: string
    sql: ${TABLE}.NombreDBClasifLecturaMovil ;;
  }

  dimension: pide_cantidad_clasif_lectura_movil {
    type: number
    sql: ${TABLE}.PideCantidadClasifLecturaMovil ;;
  }

  dimension: piderepartidorclasiflecturamovil {
    type: number
    sql: ${TABLE}.piderepartidorclasiflecturamovil ;;
  }
  measure: count {
    type: count
  }
}
