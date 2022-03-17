# The name of this view in Looker is "Ods Po Line Recpt Xref"
view: ods_po_line_recpt_xref {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_PO_LINE_RECPT_XREF`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bf Avg Cost Amt" in Explore.

  dimension: bf_avg_cost_amt {
    type: number
    sql: ${TABLE}.BF_AVG_COST_AMT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_bf_avg_cost_amt {
    type: sum
    sql: ${bf_avg_cost_amt} ;;
  }

  measure: average_bf_avg_cost_amt {
    type: average
    sql: ${bf_avg_cost_amt} ;;
  }

  dimension: bf_boh_avg_cost_amt {
    type: number
    sql: ${TABLE}.BF_BOH_AVG_COST_AMT ;;
  }

  dimension: boh_qty {
    type: number
    sql: ${TABLE}.BOH_QTY ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: case_palt_flg {
    type: string
    sql: ${TABLE}.CASE_PALT_FLG ;;
  }

  dimension: co_cd {
    type: string
    sql: ${TABLE}.CO_CD ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: crt_dt {
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
    sql: ${TABLE}.CRT_DT ;;
  }

  dimension: ims_del_flg {
    type: string
    sql: ${TABLE}.IMS_DEL_FLG ;;
  }

  dimension: inv_unit_cost_amt {
    type: number
    sql: ${TABLE}.INV_UNIT_COST_AMT ;;
  }

  dimension: line_nbr {
    type: string
    sql: ${TABLE}.LINE_NBR ;;
  }

  dimension: new_avg_cost_amt {
    type: number
    sql: ${TABLE}.NEW_AVG_COST_AMT ;;
  }

  dimension_group: ods_last_upd_ts {
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
    sql: ${TABLE}.ODS_LAST_UPD_TS ;;
  }

  dimension: po_nbr {
    type: string
    sql: ${TABLE}.PO_NBR ;;
  }

  dimension: qot_unit_cost_amt {
    type: number
    sql: ${TABLE}.QOT_UNIT_COST_AMT ;;
  }

  dimension_group: rcv_dt {
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
    sql: ${TABLE}.RCV_DT ;;
  }

  dimension: rcv_duty_rt {
    type: number
    sql: ${TABLE}.RCV_DUTY_RT ;;
  }

  dimension: rcv_fld_pop_flg {
    type: string
    sql: ${TABLE}.RCV_FLD_POP_FLG ;;
  }

  dimension: rcv_misc_cost_amt {
    type: number
    sql: ${TABLE}.RCV_MISC_COST_AMT ;;
  }

  dimension: rcv_qty {
    type: number
    sql: ${TABLE}.RCV_QTY ;;
  }

  dimension: rcv_stus_cd {
    type: string
    sql: ${TABLE}.RCV_STUS_CD ;;
  }

  dimension: rcv_tax_rt {
    type: number
    sql: ${TABLE}.RCV_TAX_RT ;;
  }

  dimension: recpt_nbr {
    type: number
    sql: ${TABLE}.RECPT_NBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
