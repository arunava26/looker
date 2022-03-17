# The name of this view in Looker is "Vsam Mllmst Contact"
view: vsam_mllmst_contact {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_MLLMST_CONTACT`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Br Nbr" in Explore.

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: catalog_cnt {
    type: number
    sql: ${TABLE}.CATALOG_CNT ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: cust_suffix {
    type: string
    sql: ${TABLE}.CUST_SUFFIX ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.EMAIL_ADDRESS ;;
  }

  dimension: entry_our_dept_code {
    type: string
    sql: ${TABLE}.ENTRY_OUR_DEPT_CODE ;;
  }

  dimension: entry_phone_ext {
    type: string
    sql: ${TABLE}.ENTRY_PHONE_EXT ;;
  }

  dimension: entry_position_title {
    type: string
    sql: ${TABLE}.ENTRY_POSITION_TITLE ;;
  }

  dimension: entry_type1 {
    type: string
    sql: ${TABLE}.ENTRY_TYPE1 ;;
  }

  dimension: entry_type2 {
    type: string
    sql: ${TABLE}.ENTRY_TYPE2 ;;
  }

  dimension: entry_type3 {
    type: string
    sql: ${TABLE}.ENTRY_TYPE3 ;;
  }

  dimension: fast_fax {
    type: string
    sql: ${TABLE}.FAST_FAX ;;
  }

  dimension: internet_code {
    type: string
    sql: ${TABLE}.INTERNET_CODE ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.LANGUAGE_CODE ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: name_nickname {
    type: string
    sql: ${TABLE}.NAME_NICKNAME ;;
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

  dimension: price_book_cnt {
    type: number
    sql: ${TABLE}.PRICE_BOOK_CNT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_price_book_cnt {
    type: sum
    sql: ${price_book_cnt} ;;
  }

  measure: average_price_book_cnt {
    type: average
    sql: ${price_book_cnt} ;;
  }

  dimension: record_type {
    type: string
    sql: ${TABLE}.RECORD_TYPE ;;
  }

  dimension: seq_nbr {
    type: string
    sql: ${TABLE}.SEQ_NBR ;;
  }

  dimension: sub_flg {
    type: string
    sql: ${TABLE}.SUB_FLG ;;
  }

  measure: count {
    type: count
    drill_fields: [name, name_nickname]
  }
}
