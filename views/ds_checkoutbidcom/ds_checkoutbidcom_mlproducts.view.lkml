# The name of this view in Looker is "Ds Checkoutbidcom Mlproducts"
view: ds_checkoutbidcom_mlproducts {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_checkoutbidcom.MLProducts` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Availability Quantity" in Explore.

  dimension: availability_quantity {
    type: string
    sql: ${TABLE}.availability_quantity ;;
  }

  dimension: catalog_listing {
    type: number
    sql: ${TABLE}.catalog_listing ;;
  }

  dimension: catalog_product_id {
    type: string
    sql: ${TABLE}.catalog_product_id ;;
  }

  dimension: category_id {
    type: string
    sql: ${TABLE}.category_id ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
  }

  dimension: category_path {
    type: string
    sql: ${TABLE}.category_path ;;
  }

  dimension: codigo_aguila {
    type: string
    sql: ${TABLE}.codigo_aguila ;;
  }

  dimension: currency_id {
    type: string
    sql: ${TABLE}.currency_id ;;
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

  dimension: envio_gratis {
    type: number
    sql: ${TABLE}.envio_gratis ;;
  }

  dimension: flex {
    type: number
    sql: ${TABLE}.flex ;;
  }

  dimension: health {
    type: number
    sql: ${TABLE}.health ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: identificador {
    type: string
    sql: ${TABLE}.identificador ;;
  }

  dimension: imagen_principal {
    type: string
    sql: ${TABLE}.imagen_principal ;;
  }

  dimension: inventory_id {
    type: string
    sql: ${TABLE}.inventory_id ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: last_update {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_update ;;
  }

  dimension: local_pick_up {
    type: number
    sql: ${TABLE}.local_pick_up ;;
  }

  dimension: logistic_type {
    type: string
    sql: ${TABLE}.logistic_type ;;
  }

  dimension: manufacturing_time {
    type: number
    sql: ${TABLE}.manufacturing_time ;;
  }

  dimension: new_price {
    type: string
    sql: ${TABLE}.new_price ;;
  }

  dimension: old_price {
    type: string
    sql: ${TABLE}.old_price ;;
  }

  dimension: original_price {
    type: string
    sql: ${TABLE}.original_price ;;
  }

  dimension: permalink {
    type: string
    sql: ${TABLE}.permalink ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}.price ;;
  }

  dimension: price_with_discount {
    type: number
    sql: ${TABLE}.price_with_discount ;;
  }

  dimension: sellerid {
    type: number
    value_format_name: id
    sql: ${TABLE}.sellerid ;;
  }

  dimension: shipping_mode {
    type: string
    sql: ${TABLE}.shipping_mode ;;
  }

  dimension: shipping_tags {
    type: string
    sql: ${TABLE}.shipping_tags ;;
  }

  dimension: sold_quantity {
    type: string
    sql: ${TABLE}.sold_quantity ;;
  }

  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.start_time ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: stock_related_item {
    type: string
    sql: ${TABLE}.stock_related_item ;;
  }

  dimension: stop_time {
    type: string
    sql: ${TABLE}.stop_time ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: thumbnail {
    type: string
    sql: ${TABLE}.thumbnail ;;
  }

  dimension: tienda_oficial {
    type: string
    sql: ${TABLE}.tienda_oficial ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_product_id {
    type: string
    sql: ${TABLE}.user_product_id ;;
  }

  dimension: variantes {
    type: number
    sql: ${TABLE}.variantes ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.video_id ;;
  }

  dimension: visits {
    type: number
    sql: ${TABLE}.visits ;;
  }
  measure: count {
    type: count
    drill_fields: [category_name]
  }
}
