# The name of this view in Looker is "Tmp Raw Stream Airbyte Bigquery Connection Test 76dd235f4f88475185442dfe4e5baf20"
view: tmp_raw__stream__airbyte_bigquery_connection_test_76dd235f4f88475185442dfe4e5baf20 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `airbyte_internal.TMP_raw__stream__airbyte_bigquery_connection_test_76dd235f4f88475185442dfe4e5baf20` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " Airbyte Data" in Explore.

  dimension: _airbyte_data {
    type: string
    sql: ${TABLE}._airbyte_data ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _airbyte_extracted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._airbyte_extracted_at ;;
  }

  dimension: _airbyte_generation_id {
    type: number
    sql: ${TABLE}._airbyte_generation_id ;;
  }

  dimension_group: _airbyte_loaded {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._airbyte_loaded_at ;;
  }

  dimension: _airbyte_meta {
    type: string
    sql: ${TABLE}._airbyte_meta ;;
  }

  dimension: _airbyte_raw_id {
    type: string
    sql: ${TABLE}._airbyte_raw_id ;;
  }
  measure: count {
    type: count
  }
}
