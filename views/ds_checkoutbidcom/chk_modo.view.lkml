# The name of this view in Looker is "Chk Modo"
view: chk_modo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_checkoutbidcom.CHK_Modo` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Additional Info Modo" in Explore.

  dimension: additional_info_modo {
    type: string
    sql: ${TABLE}.additionalInfoModo ;;
  }

  dimension: amount_refunded {
    type: string
    sql: ${TABLE}.amountRefunded ;;
  }

  dimension: author_refunded {
    type: string
    sql: ${TABLE}.authorRefunded ;;
  }

  dimension: authorization_code_modo {
    type: string
    sql: ${TABLE}.authorizationCodeModo ;;
  }

  dimension: card_numbers_modo {
    type: string
    sql: ${TABLE}.cardNumbersModo ;;
  }

  dimension: concurrency_timestamp_modo {
    type: string
    sql: ${TABLE}.concurrencyTimestampModo ;;
  }

  dimension: created_at_modo {
    type: string
    sql: ${TABLE}.createdAtModo ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
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

  dimension: deeplink_modo {
    type: string
    sql: ${TABLE}.deeplinkModo ;;
  }

  dimension: establishment_name {
    type: string
    sql: ${TABLE}.establishmentName ;;
  }

  dimension: expiration_at_modo {
    type: string
    sql: ${TABLE}.expirationAtModo ;;
  }

  dimension: expiration_date {
    type: string
    sql: ${TABLE}.expirationDate ;;
  }

  dimension: expiration_date_modo {
    type: string
    sql: ${TABLE}.expirationDateModo ;;
  }

  dimension: external_intention_id {
    type: string
    sql: ${TABLE}.externalIntentionId ;;
  }

  dimension: external_intention_id_modo {
    type: string
    sql: ${TABLE}.externalIntentionIdModo ;;
  }

  dimension: has_capture_flow_modo {
    type: string
    sql: ${TABLE}.hasCaptureFlowModo ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: id_carrito {
    type: string
    sql: ${TABLE}.idCarrito ;;
  }

  dimension: id_chk_pago {
    type: number
    sql: ${TABLE}.idChkPago ;;
  }

  dimension: id_modo {
    type: string
    sql: ${TABLE}.idModo ;;
  }

  dimension: intention_reuse_enabled_modo {
    type: string
    sql: ${TABLE}.intentionReuseEnabledModo ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: message_modo {
    type: string
    sql: ${TABLE}.messageModo ;;
  }

  dimension: payment_data_modo {
    type: string
    sql: ${TABLE}.paymentDataModo ;;
  }

  dimension: payment_id_modo {
    type: string
    sql: ${TABLE}.paymentIdModo ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}.price ;;
  }

  dimension: price_modo {
    type: string
    sql: ${TABLE}.priceModo ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.productName ;;
  }

  dimension: product_name_modo {
    type: string
    sql: ${TABLE}.productNameModo ;;
  }

  dimension: qr_modo {
    type: string
    sql: ${TABLE}.qrModo ;;
  }

  dimension: quantity {
    type: string
    sql: ${TABLE}.quantity ;;
  }

  dimension: quantity_modo {
    type: string
    sql: ${TABLE}.quantityModo ;;
  }

  dimension: refund_information {
    type: string
    sql: ${TABLE}.refundInformation ;;
  }

  dimension: status_modo {
    type: string
    sql: ${TABLE}.statusModo ;;
  }

  dimension: status_refunded {
    type: string
    sql: ${TABLE}.statusRefunded ;;
  }

  dimension: store_id {
    type: string
    sql: ${TABLE}.storeId ;;
  }

  dimension: store_id_modo {
    type: string
    sql: ${TABLE}.storeIdModo ;;
  }

  dimension: sub_payments_modo {
    type: string
    sql: ${TABLE}.subPaymentsModo ;;
  }

  dimension: ticket_modo {
    type: string
    sql: ${TABLE}.ticketModo ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name, establishment_name]
  }
}
