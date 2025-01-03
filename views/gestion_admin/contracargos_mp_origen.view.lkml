# The name of this view in Looker is "Contracargos Mp Origen"
view: contracargos_mp_origen {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_admin.contracargos_mp_origen` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Codigo De Referencia De La Operacion Operation External Reference" in Explore.

  dimension: codigo_de_referencia_de_la_operacion_operation_external_reference {
    type: number
    sql: ${TABLE}.codigo_de_referencia_de_la_operacion_operation_external_reference ;;
  }

  dimension: detalle_del_estado_del_contracargo_status_detail {
    type: string
    sql: ${TABLE}.detalle_del_estado_del_contracargo_status_detail ;;
  }

  dimension: email_de_la_contraparte_counterpart_email {
    type: string
    sql: ${TABLE}.`e-mail_de_la_contraparte_counterpart_email` ;;
  }

  dimension: estado_del_contracargo_status {
    type: string
    sql: ${TABLE}.estado_del_contracargo_status ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_de_creacion_de_la_operacion_de_mercado_pago_operation_date_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_de_creacion_de_la_operacion_de_mercado_pago_operation_date_created ;;
  }

  dimension_group: fecha_de_creacion_del_contracargo_date_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_de_creacion_del_contracargo_date_created ;;
  }

  dimension_group: fecha_limite_para_presentar_la_documentacion_documentation_deadline {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_limite_para_presentar_la_documentacion_documentation_deadline ;;
  }

  dimension: monto_de_la_operacion_operation_amount {
    type: number
    sql: ${TABLE}.monto_de_la_operacion_operation_amount ;;
  }

  dimension: monto_del_contracargo_amount {
    type: number
    sql: ${TABLE}.monto_del_contracargo_amount ;;
  }

  dimension: nickname_de_la_contraparte_counterpart_nickname {
    type: string
    sql: ${TABLE}.nickname_de_la_contraparte_counterpart_nickname ;;
  }

  dimension: nombre_de_campania_de_descuento_campaign_name {
    type: string
    sql: ${TABLE}.nombre_de_campania_de_descuento_campaign_name ;;
  }

  dimension: nombre_de_la_contraparte_counterpart_name {
    type: string
    sql: ${TABLE}.nombre_de_la_contraparte_counterpart_name ;;
  }

  dimension: numero_de_campania_de_descuento_campaign_id {
    type: number
    sql: ${TABLE}.numero_de_campania_de_descuento_campaign_id ;;
  }

  dimension: numero_de_contracargo_chargeback_id {
    type: number
    sql: ${TABLE}.numero_de_contracargo_chargeback_id ;;
  }

  dimension: numero_de_operacion_de_mercado_pago_operation_id {
    type: number
    sql: ${TABLE}.numero_de_operacion_de_mercado_pago_operation_id ;;
  }

  dimension: numero_de_venta_de_mercado_libre_order_id {
    type: number
    sql: ${TABLE}.numero_de_venta_de_mercado_libre_order_id ;;
  }

  dimension: numero_de_venta_en_tu_negocio_online_merchant_order_id {
    type: number
    sql: ${TABLE}.numero_de_venta_en_tu_negocio_online_merchant_order_id ;;
  }

  dimension: plataforma_operation_marketplace {
    type: string
    sql: ${TABLE}.plataforma_operation_marketplace ;;
  }

  dimension: tipo_de_operacion_operation_type {
    type: string
    sql: ${TABLE}.tipo_de_operacion_operation_type ;;
  }
  measure: count {
    type: count
    drill_fields: [nombre_de_campania_de_descuento_campaign_name, nombre_de_la_contraparte_counterpart_name, nickname_de_la_contraparte_counterpart_nickname]
  }
}
