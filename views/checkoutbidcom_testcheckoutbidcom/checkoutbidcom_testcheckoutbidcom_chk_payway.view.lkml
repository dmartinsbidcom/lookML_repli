# The name of this view in Looker is "Checkoutbidcom Testcheckoutbidcom Chk Payway"
view: checkoutbidcom_testcheckoutbidcom_chk_payway {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `checkoutbidcom_testcheckoutbidcom.CHK_Payway` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Address Validation Code" in Explore.

  dimension: address_validation_code {
    type: string
    sql: ${TABLE}.addressValidationCode ;;
  }

  dimension: aggregate_data {
    type: string
    sql: ${TABLE}.aggregateData ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}.amount ;;
  }

  dimension: authorization_code {
    type: string
    sql: ${TABLE}.authorizationCode ;;
  }

  dimension: bin {
    type: string
    sql: ${TABLE}.bin ;;
  }

  dimension: card_numbers {
    type: string
    sql: ${TABLE}.cardNumbers ;;
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

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: email_client {
    type: string
    sql: ${TABLE}.emailClient ;;
  }

  dimension: establishment_name {
    type: string
    sql: ${TABLE}.establishmentName ;;
  }

  dimension: fraud_detection {
    type: string
    sql: ${TABLE}.fraudDetection ;;
  }

  dimension: idchk_pago {
    type: number
    sql: ${TABLE}.IDChkPago ;;
  }

  dimension: idpayment_method {
    type: string
    sql: ${TABLE}.IDPaymentMethod ;;
  }

  dimension: idpayway {
    type: number
    sql: ${TABLE}.IDPayway ;;
  }

  dimension: idpayway_portal {
    type: string
    sql: ${TABLE}.IDPaywayPortal ;;
  }

  dimension: idsite_transaction {
    type: string
    sql: ${TABLE}.IDSiteTransaction ;;
  }

  dimension: idtransaction_portal_payway {
    type: string
    sql: ${TABLE}.IDTransactionPortalPayway ;;
  }

  dimension: installments {
    type: string
    sql: ${TABLE}.installments ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}.paymentType ;;
  }

  dimension: society {
    type: string
    sql: ${TABLE}.society ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_details_error {
    type: string
    sql: ${TABLE}.statusDetailsError ;;
  }

  dimension: sub_payments {
    type: string
    sql: ${TABLE}.subPayments ;;
  }

  dimension: ticket {
    type: string
    sql: ${TABLE}.ticket ;;
  }
  measure: count {
    type: count
    drill_fields: [establishment_name]
  }
}
