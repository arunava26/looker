# The name of this view in Looker is "Ims Prod Resv Inslor 2"
view: ims_prod_resv_inslor_2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_RESV_INSLOR_2`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Auto Bt Resv Protect Sw" in Explore.

  dimension: auto_bt_resv_protect_sw {
    type: string
    sql: ${TABLE}.AUTO_BT_RESV_PROTECT_SW ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.COMMENTS ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: contract_nbr {
    type: string
    sql: ${TABLE}.CONTRACT_NBR ;;
  }

  dimension: contract_price {
    type: number
    sql: ${TABLE}.CONTRACT_PRICE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_contract_price {
    type: sum
    sql: ${contract_price} ;;
  }

  measure: average_contract_price {
    type: average
    sql: ${contract_price} ;;
  }

  dimension: cost_percent {
    type: number
    sql: ${TABLE}.COST_PERCENT ;;
  }

  dimension: cust_br_nbr {
    type: string
    sql: ${TABLE}.CUST_BR_NBR ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: cust_seq {
    type: string
    sql: ${TABLE}.CUST_SEQ ;;
  }

  dimension: date_last_ship {
    type: number
    sql: ${TABLE}.DATE_LAST_SHIP ;;
  }

  dimension: effect_date {
    type: number
    sql: ${TABLE}.EFFECT_DATE ;;
  }

  dimension: expected_ship_date {
    type: number
    sql: ${TABLE}.EXPECTED_SHIP_DATE ;;
  }

  dimension: expiration_date {
    type: number
    sql: ${TABLE}.EXPIRATION_DATE ;;
  }

  dimension: extension_count {
    type: string
    sql: ${TABLE}.EXTENSION_COUNT ;;
  }

  dimension: fee_percent {
    type: number
    sql: ${TABLE}.FEE_PERCENT ;;
  }

  dimension: last_chg_date {
    type: number
    sql: ${TABLE}.LAST_CHG_DATE ;;
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

  dimension: opid {
    type: string
    sql: ${TABLE}.OPID ;;
  }

  dimension: original_expiration {
    type: number
    sql: ${TABLE}.ORIGINAL_EXPIRATION ;;
  }

  dimension: po_br {
    type: string
    sql: ${TABLE}.PO_BR ;;
  }

  dimension: po_line_nbr {
    type: string
    sql: ${TABLE}.PO_LINE_NBR ;;
  }

  dimension: po_nbr {
    type: string
    sql: ${TABLE}.PO_NBR ;;
  }

  dimension: qty_shipped_to_date {
    type: number
    sql: ${TABLE}.QTY_SHIPPED_TO_DATE ;;
  }

  dimension: reserve_qty {
    type: number
    sql: ${TABLE}.RESERVE_QTY ;;
  }

  dimension: reserve_type {
    type: string
    sql: ${TABLE}.RESERVE_TYPE ;;
  }

  dimension: rsv_status {
    type: string
    sql: ${TABLE}.RSV_STATUS ;;
  }

  dimension: salesman_nbr {
    type: string
    sql: ${TABLE}.SALESMAN_NBR ;;
  }

  dimension: seg_type {
    type: string
    sql: ${TABLE}.SEG_TYPE ;;
  }

  dimension: seq_nbr {
    type: number
    sql: ${TABLE}.SEQ_NBR ;;
  }

  dimension: source_co {
    type: string
    sql: ${TABLE}.SOURCE_CO ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
