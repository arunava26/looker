# The name of this view in Looker is "Ims Cust Cusmsc Bank Info B"
view: ims_cust_cusmsc_bank_info_b {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_CUST_CUSMSC_BANK_INFO_B`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bank Acct Name" in Explore.

  dimension: bank_acct_name {
    type: string
    sql: ${TABLE}.BANK_ACCT_NAME ;;
  }

  dimension: bank_address {
    type: string
    sql: ${TABLE}.BANK_ADDRESS ;;
  }

  dimension: bank_city {
    type: string
    sql: ${TABLE}.BANK_CITY ;;
  }

  dimension: bank_name {
    type: string
    sql: ${TABLE}.BANK_NAME ;;
  }

  dimension: bank_number {
    type: string
    sql: ${TABLE}.BANK_NUMBER ;;
  }

  dimension: bank_rec_id {
    type: string
    sql: ${TABLE}.BANK_REC_ID ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: cust_def_bank {
    type: string
    sql: ${TABLE}.CUST_DEF_BANK ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ods_lst_upd_ts {
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
    sql: ${TABLE}.ODS_LST_UPD_TS ;;
  }

  dimension: segment_type {
    type: string
    sql: ${TABLE}.SEGMENT_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [bank_name, bank_acct_name]
  }
}
