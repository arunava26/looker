# The name of this view in Looker is "Vsam Mllmst Location"
view: vsam_mllmst_location {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_MLLMST_LOCATION`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address1" in Explore.

  dimension: address1 {
    type: string
    sql: ${TABLE}.ADDRESS1 ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.ADDRESS2 ;;
  }

  dimension: address3 {
    type: string
    sql: ${TABLE}.ADDRESS3 ;;
  }

  dimension: address4 {
    type: string
    sql: ${TABLE}.ADDRESS4 ;;
  }

  dimension: address5 {
    type: string
    sql: ${TABLE}.ADDRESS5 ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.COUNTRY_CODE ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: cust_suffix {
    type: string
    sql: ${TABLE}.CUST_SUFFIX ;;
  }

  dimension: egp_contact {
    type: string
    sql: ${TABLE}.EGP_CONTACT ;;
  }

  dimension: egp_cpu {
    type: string
    sql: ${TABLE}.EGP_CPU ;;
  }

  dimension: egp_status {
    type: string
    sql: ${TABLE}.EGP_STATUS ;;
  }

  dimension: entry_fax_ext {
    type: string
    sql: ${TABLE}.ENTRY_FAX_EXT ;;
  }

  dimension: entry_phone_ext {
    type: string
    sql: ${TABLE}.ENTRY_PHONE_EXT ;;
  }

  dimension: mkt_mailing {
    type: string
    sql: ${TABLE}.MKT_MAILING ;;
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

  dimension: record_type {
    type: string
    sql: ${TABLE}.RECORD_TYPE ;;
  }

  dimension: seq_nbr {
    type: string
    sql: ${TABLE}.SEQ_NBR ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.ZIP ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
