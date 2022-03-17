# The name of this view in Looker is "Ims Po Pusdes Desc"
view: ims_po_pusdes_desc {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PO_PUSDES_DESC`
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

  dimension: cc_br_nbr {
    type: string
    sql: ${TABLE}.CC_BR_NBR ;;
  }

  dimension: cc_company {
    type: string
    sql: ${TABLE}.CC_COMPANY ;;
  }

  dimension: cc_creation_date {
    type: number
    sql: ${TABLE}.CC_CREATION_DATE ;;
  }

  dimension: cc_line_nbr {
    type: string
    sql: ${TABLE}.CC_LINE_NBR ;;
  }

  dimension: cc_line_qty {
    type: number
    sql: ${TABLE}.CC_LINE_QTY ;;
  }

  dimension: cc_po_nbr {
    type: string
    sql: ${TABLE}.CC_PO_NBR ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: desc_nbr {
    type: string
    sql: ${TABLE}.DESC_NBR ;;
  }

  dimension: description_puds {
    type: string
    sql: ${TABLE}.DESCRIPTION_PUDS ;;
  }

  dimension: dest_br_nbr {
    type: string
    sql: ${TABLE}.DEST_BR_NBR ;;
  }

  dimension: duty_code {
    type: string
    sql: ${TABLE}.DUTY_CODE ;;
  }

  dimension: duty_rate {
    type: number
    sql: ${TABLE}.DUTY_RATE ;;
  }

  dimension: eta {
    type: number
    sql: ${TABLE}.ETA ;;
  }

  dimension: eta_source {
    type: string
    sql: ${TABLE}.ETA_SOURCE ;;
  }

  dimension: last_rec_qty {
    type: number
    sql: ${TABLE}.LAST_REC_QTY ;;
  }

  dimension: line_nbr {
    type: string
    sql: ${TABLE}.LINE_NBR ;;
  }

  dimension: misc_cost {
    type: number
    sql: ${TABLE}.MISC_COST ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_misc_cost {
    type: sum
    sql: ${misc_cost} ;;
  }

  measure: average_misc_cost {
    type: average
    sql: ${misc_cost} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ods_prod_lst_upd_dt {
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
    sql: ${TABLE}.ODS_PROD_LST_UPD_DT ;;
  }

  dimension: po_nbr {
    type: string
    sql: ${TABLE}.PO_NBR ;;
  }

  dimension: primary_loc {
    type: string
    sql: ${TABLE}.PRIMARY_LOC ;;
  }

  dimension: qty_in_trans {
    type: number
    sql: ${TABLE}.QTY_IN_TRANS ;;
  }

  dimension: qty_open {
    type: number
    sql: ${TABLE}.QTY_OPEN ;;
  }

  dimension: qty_ordered {
    type: number
    sql: ${TABLE}.QTY_ORDERED ;;
  }

  dimension: qty_received {
    type: number
    sql: ${TABLE}.QTY_RECEIVED ;;
  }

  dimension: qty_transferred {
    type: number
    sql: ${TABLE}.QTY_TRANSFERRED ;;
  }

  dimension: receipt_nbr {
    type: number
    sql: ${TABLE}.RECEIPT_NBR ;;
  }

  dimension: rsv_account {
    type: string
    sql: ${TABLE}.RSV_ACCOUNT ;;
  }

  dimension: rsv_br {
    type: string
    sql: ${TABLE}.RSV_BR ;;
  }

  dimension: rsv_comments {
    type: string
    sql: ${TABLE}.RSV_COMMENTS ;;
  }

  dimension: rsv_expected_ship {
    type: number
    sql: ${TABLE}.RSV_EXPECTED_SHIP ;;
  }

  dimension: rsv_qty {
    type: number
    sql: ${TABLE}.RSV_QTY ;;
  }

  dimension: rsv_rcvd_qty {
    type: number
    sql: ${TABLE}.RSV_RCVD_QTY ;;
  }

  dimension: rsv_status {
    type: string
    sql: ${TABLE}.RSV_STATUS ;;
  }

  dimension: source_co {
    type: string
    sql: ${TABLE}.SOURCE_CO ;;
  }

  dimension: tax_code {
    type: string
    sql: ${TABLE}.TAX_CODE ;;
  }

  dimension: tax_rate {
    type: number
    sql: ${TABLE}.TAX_RATE ;;
  }

  dimension: transfer_status {
    type: string
    sql: ${TABLE}.TRANSFER_STATUS ;;
  }

  dimension: upd_bus_date {
    type: number
    sql: ${TABLE}.UPD_BUS_DATE ;;
  }

  dimension: upd_desc {
    type: string
    sql: ${TABLE}.UPD_DESC ;;
  }

  dimension: upd_sys_date {
    type: number
    sql: ${TABLE}.UPD_SYS_DATE ;;
  }

  dimension: upd_sys_time {
    type: number
    sql: ${TABLE}.UPD_SYS_TIME ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
