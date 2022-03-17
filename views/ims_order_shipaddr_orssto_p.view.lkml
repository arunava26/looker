# The name of this view in Looker is "Ims Order Shipaddr Orssto P"
view: ims_order_shipaddr_orssto_p {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_ORDER_SHIPADDR_ORSSTO_P`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Auth Code" in Explore.

  dimension: auth_code {
    type: string
    sql: ${TABLE}.AUTH_CODE ;;
  }

  dimension: auth_resp_code {
    type: string
    sql: ${TABLE}.AUTH_RESP_CODE ;;
  }

  dimension: auto_post_ar_sw {
    type: string
    sql: ${TABLE}.AUTO_POST_AR_SW ;;
  }

  dimension: avs_result_code {
    type: string
    sql: ${TABLE}.AVS_RESULT_CODE ;;
  }

  dimension: branch_nbr {
    type: string
    sql: ${TABLE}.BRANCH_NBR ;;
  }

  dimension: card_nbr {
    type: string
    sql: ${TABLE}.CARD_NBR ;;
  }

  dimension: card_type {
    type: string
    sql: ${TABLE}.CARD_TYPE ;;
  }

  dimension: company_cd {
    type: string
    sql: ${TABLE}.COMPANY_CD ;;
  }

  dimension: exp_month {
    type: string
    sql: ${TABLE}.EXP_MONTH ;;
  }

  dimension: exp_year {
    type: string
    sql: ${TABLE}.EXP_YEAR ;;
  }

  dimension: foreign_payment_amt {
    type: number
    sql: ${TABLE}.FOREIGN_PAYMENT_AMT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_foreign_payment_amt {
    type: sum
    sql: ${foreign_payment_amt} ;;
  }

  measure: average_foreign_payment_amt {
    type: average
    sql: ${foreign_payment_amt} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ods_lst_upd_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.ODS_LST_UPD_DT ;;
  }

  dimension: ordr_nbr {
    type: string
    sql: ${TABLE}.ORDR_NBR ;;
  }

  dimension: payment_amt {
    type: number
    sql: ${TABLE}.PAYMENT_AMT ;;
  }

  dimension: payment_code {
    type: string
    sql: ${TABLE}.PAYMENT_CODE ;;
  }

  dimension: payment_seq {
    type: string
    sql: ${TABLE}.PAYMENT_SEQ ;;
  }

  dimension: provider_code {
    type: string
    sql: ${TABLE}.PROVIDER_CODE ;;
  }

  dimension: security_id {
    type: string
    sql: ${TABLE}.SECURITY_ID ;;
  }

  dimension: security_resp {
    type: string
    sql: ${TABLE}.SECURITY_RESP ;;
  }

  dimension: segment_type {
    type: string
    sql: ${TABLE}.SEGMENT_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
