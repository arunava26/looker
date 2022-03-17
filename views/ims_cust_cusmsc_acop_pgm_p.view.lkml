# The name of this view in Looker is "Ims Cust Cusmsc Acop Pgm P"
view: ims_cust_cusmsc_acop_pgm_p {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_CUST_CUSMSC_ACOP_PGM_P`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acop Contract Desc" in Explore.

  dimension: acop_contract_desc {
    type: string
    sql: ${TABLE}.ACOP_CONTRACT_DESC ;;
  }

  dimension: acop_contract_nbr {
    type: string
    sql: ${TABLE}.ACOP_CONTRACT_NBR ;;
  }

  dimension: acop_dd250_invoice {
    type: string
    sql: ${TABLE}.ACOP_DD250_INVOICE ;;
  }

  dimension: acop_dd250_req_sw {
    type: string
    sql: ${TABLE}.ACOP_DD250_REQ_SW ;;
  }

  dimension: acop_prog_active_sw {
    type: string
    sql: ${TABLE}.ACOP_PROG_ACTIVE_SW ;;
  }

  dimension: acop_program_type1 {
    type: string
    sql: ${TABLE}.ACOP_PROGRAM_TYPE1 ;;
  }

  dimension: acop_program_type2 {
    type: string
    sql: ${TABLE}.ACOP_PROGRAM_TYPE2 ;;
  }

  dimension: acop_reporting_code {
    type: string
    sql: ${TABLE}.ACOP_REPORTING_CODE ;;
  }

  dimension: acop_ship_from_br {
    type: string
    sql: ${TABLE}.ACOP_SHIP_FROM_BR ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: last_update_date {
    type: string
    sql: ${TABLE}.LAST_UPDATE_DATE ;;
  }

  dimension: last_update_id {
    type: string
    sql: ${TABLE}.LAST_UPDATE_ID ;;
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
    drill_fields: []
  }
}
