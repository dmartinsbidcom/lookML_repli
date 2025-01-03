# The name of this view in Looker is "Checkoutbidcom Testcheckoutbidcom Chk Carrito Copy"
view: checkoutbidcom_testcheckoutbidcom_chk_carrito_copy {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `checkoutbidcom_testcheckoutbidcom.CHK_Carrito_copy` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Aclaraciones" in Explore.

  dimension: aclaraciones {
    type: string
    sql: ${TABLE}.aclaraciones ;;
  }

  dimension: apellido_autorizado {
    type: string
    sql: ${TABLE}.apellido_autorizado ;;
  }

  dimension: calle {
    type: string
    sql: ${TABLE}.calle ;;
  }

  dimension: cliente_id {
    type: number
    sql: ${TABLE}.cliente_id ;;
  }

  dimension: comentario {
    type: string
    sql: ${TABLE}.comentario ;;
  }

  dimension: cp {
    type: string
    sql: ${TABLE}.cp ;;
  }

  dimension: cupon {
    type: string
    sql: ${TABLE}.cupon ;;
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

  dimension: documento_autorizado {
    type: string
    sql: ${TABLE}.documento_autorizado ;;
  }

  dimension: empresa {
    type: string
    sql: ${TABLE}.empresa ;;
  }

  dimension: entre_calle1 {
    type: string
    sql: ${TABLE}.entre_calle1 ;;
  }

  dimension: entre_calle2 {
    type: string
    sql: ${TABLE}.entre_calle2 ;;
  }

  dimension: estado_id {
    type: number
    sql: ${TABLE}.estado_id ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha ;;
  }

  dimension: fecha_entrega {
    type: string
    sql: ${TABLE}.fecha_entrega ;;
  }

  dimension: forma_entrega_id {
    type: number
    sql: ${TABLE}.forma_entrega_id ;;
  }

  dimension: franja_horaria {
    type: string
    sql: ${TABLE}.franja_horaria ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: link_id {
    type: string
    sql: ${TABLE}.link_id ;;
  }

  dimension: localidad {
    type: string
    sql: ${TABLE}.localidad ;;
  }

  dimension: manufacturing_time_days {
    type: number
    sql: ${TABLE}.manufacturing_time_days ;;
  }

  dimension: medio_envio_id {
    type: number
    sql: ${TABLE}.medio_envio_id ;;
  }

  dimension: medio_pago_id {
    type: number
    sql: ${TABLE}.medio_pago_id ;;
  }

  dimension: nombre_autorizado {
    type: string
    sql: ${TABLE}.nombre_autorizado ;;
  }

  dimension: numero {
    type: string
    sql: ${TABLE}.numero ;;
  }

  dimension: piso {
    type: string
    sql: ${TABLE}.piso ;;
  }

  dimension: provincia_id {
    type: number
    sql: ${TABLE}.provincia_id ;;
  }

  dimension: sucursal_oca {
    type: string
    sql: ${TABLE}.sucursal_oca ;;
  }

  dimension: terminal {
    type: string
    sql: ${TABLE}.terminal ;;
  }

  dimension: tiempo_entrega {
    type: string
    sql: ${TABLE}.tiempo_entrega ;;
  }

  dimension: tienda {
    type: string
    sql: ${TABLE}.tienda ;;
  }

  dimension: tipo_costo_envio {
    type: number
    sql: ${TABLE}.tipo_costo_envio ;;
  }

  dimension: vendedor_id {
    type: number
    sql: ${TABLE}.vendedor_id ;;
  }

  dimension: vendedor_sku {
    type: string
    sql: ${TABLE}.vendedor_sku ;;
  }
  measure: count {
    type: count
  }
}
