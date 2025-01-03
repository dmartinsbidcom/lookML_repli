# The name of this view in Looker is "Promos Bancarias"
view: promos_bancarias {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.promos_bancarias` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Active" in Explore.

  dimension: active {
    type: number
    sql: ${TABLE}.active ;;
  }

  dimension: activo {
    type: number
    sql: ${TABLE}.activo ;;
  }

  dimension: banks {
    type: string
    sql: ${TABLE}.banks ;;
  }

  dimension: cantidad_cuotas {
    type: number
    sql: ${TABLE}.cantidad_cuotas ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.created_at ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension: cuotas {
    type: number
    sql: ${TABLE}.cuotas ;;
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

  dimension: dates_applied {
    type: string
    sql: ${TABLE}.dates_applied ;;
  }

  dimension: days_applied {
    type: string
    sql: ${TABLE}.days_applied ;;
  }

  dimension: descuento {
    type: number
    sql: ${TABLE}.descuento ;;
  }

  dimension: dias_aplicados {
    type: string
    sql: ${TABLE}.dias_aplicados ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.discount ;;
  }

  dimension: discount_in {
    type: string
    sql: ${TABLE}.discount_in ;;
  }

  dimension: entidad_bancaria {
    type: string
    sql: ${TABLE}.entidad_bancaria ;;
  }

  dimension_group: fecha_desde {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_desde ;;
  }

  dimension_group: fecha_hasta {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_hasta ;;
  }

  dimension: icono {
    type: string
    sql: ${TABLE}.icono ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: medio_compra {
    type: string
    sql: ${TABLE}.medio_compra ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: order {
    type: string
    sql: ${TABLE}.`order` ;;
  }

  dimension: porcentaje_descuento {
    type: number
    sql: ${TABLE}.porcentaje_descuento ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: quotas {
    type: number
    sql: ${TABLE}.quotas ;;
  }

  dimension: txt_fields {
    type: string
    sql: ${TABLE}.txt_fields ;;
  }

  dimension: txt_footer {
    type: string
    sql: ${TABLE}.txt_footer ;;
  }

  dimension: txt_promo_body {
    type: string
    sql: ${TABLE}.txt_promo_body ;;
  }

  dimension: update_by {
    type: string
    sql: ${TABLE}.update_by ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }
  measure: count {
    type: count
  }
}
