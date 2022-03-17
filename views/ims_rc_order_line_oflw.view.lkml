# The name of this view in Looker is "Ims Rc Order Line Oflw"
view: ims_rc_order_line_oflw {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_RC_ORDER_LINE_OFLW`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acop Date" in Explore.

  dimension: acop_date {
    type: number
    sql: ${TABLE}.ACOP_DATE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_acop_date {
    type: sum
    sql: ${acop_date} ;;
  }

  measure: average_acop_date {
    type: average
    sql: ${acop_date} ;;
  }

  dimension: acop_time {
    type: number
    sql: ${TABLE}.ACOP_TIME ;;
  }

  dimension: apply_acop_delta_ind {
    type: string
    sql: ${TABLE}.APPLY_ACOP_DELTA_IND ;;
  }

  dimension: apply_acop_delta_ind_src {
    type: string
    sql: ${TABLE}.APPLY_ACOP_DELTA_IND_SRC ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: dist_nbr {
    type: string
    sql: ${TABLE}.DIST_NBR ;;
  }

  dimension: eu_data_avail_flg {
    type: string
    sql: ${TABLE}.EU_DATA_AVAIL_FLG ;;
  }

  dimension: eu_mrkt_sgmt_typ_cd {
    type: string
    sql: ${TABLE}.EU_MRKT_SGMT_TYP_CD ;;
  }

  dimension: eu_mrkt_sgmt_typ_src {
    type: string
    sql: ${TABLE}.EU_MRKT_SGMT_TYP_SRC ;;
  }

  dimension: eu_po_nbr {
    type: string
    sql: ${TABLE}.EU_PO_NBR ;;
  }

  dimension: gsa_ind {
    type: string
    sql: ${TABLE}.GSA_IND ;;
  }

  dimension: line_nbr {
    type: string
    sql: ${TABLE}.LINE_NBR ;;
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

  dimension: order_nbr {
    type: string
    sql: ${TABLE}.ORDER_NBR ;;
  }

  dimension: orslneof_key_0 {
    type: string
    sql: ${TABLE}.ORSLNEOF_KEY_0 ;;
  }

  dimension: prod_sls_mngt_order_ind {
    type: string
    sql: ${TABLE}.PROD_SLS_MNGT_ORDER_IND ;;
  }

  dimension: rslr_addr_seq_nbr {
    type: number
    sql: ${TABLE}.RSLR_ADDR_SEQ_NBR ;;
  }

  dimension: rslr_eu_ctac_id {
    type: number
    sql: ${TABLE}.RSLR_EU_CTAC_ID ;;
  }

  dimension: rslr_eu_id {
    type: number
    sql: ${TABLE}.RSLR_EU_ID ;;
  }

  dimension: ship_nbr {
    type: string
    sql: ${TABLE}.SHIP_NBR ;;
  }

  dimension: tot_acop_delta {
    type: number
    sql: ${TABLE}.TOT_ACOP_DELTA ;;
  }

  dimension: tot_acop_delta_prc {
    type: number
    sql: ${TABLE}.TOT_ACOP_DELTA_PRC ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
