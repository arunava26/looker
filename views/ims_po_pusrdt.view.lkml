# The name of this view in Looker is "Ims Po Pusrdt"
view: ims_po_pusrdt {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PO_PUSRDT`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Avg Cost Before" in Explore.

  dimension: avg_cost_before {
    type: number
    sql: ${TABLE}.AVG_COST_BEFORE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_avg_cost_before {
    type: sum
    sql: ${avg_cost_before} ;;
  }

  measure: average_avg_cost_before {
    type: average
    sql: ${avg_cost_before} ;;
  }

  dimension: avg_cost_boh_before {
    type: number
    sql: ${TABLE}.AVG_COST_BOH_BEFORE ;;
  }

  dimension: bal_on_hand {
    type: number
    sql: ${TABLE}.BAL_ON_HAND ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: case_pallet_sw {
    type: string
    sql: ${TABLE}.CASE_PALLET_SW ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: inv_unit_cost {
    type: number
    sql: ${TABLE}.INV_UNIT_COST ;;
  }

  dimension: line_nbr {
    type: string
    sql: ${TABLE}.LINE_NBR ;;
  }

  dimension: new_avg_cost {
    type: number
    sql: ${TABLE}.NEW_AVG_COST ;;
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

  dimension: prev_rec_date {
    type: number
    sql: ${TABLE}.PREV_REC_DATE ;;
  }

  dimension: prev_rec_nbr {
    type: number
    sql: ${TABLE}.PREV_REC_NBR ;;
  }

  dimension: prev_rec_qty {
    type: number
    sql: ${TABLE}.PREV_REC_QTY ;;
  }

  dimension: prev_rec_time {
    type: number
    sql: ${TABLE}.PREV_REC_TIME ;;
  }

  dimension: purd_prev_rec_voided_sw {
    type: string
    sql: ${TABLE}.PURD_PREV_REC_VOIDED_SW ;;
  }

  dimension: quoted_unit_cost {
    type: number
    sql: ${TABLE}.QUOTED_UNIT_COST ;;
  }

  dimension: rcv_duty_rate {
    type: number
    sql: ${TABLE}.RCV_DUTY_RATE ;;
  }

  dimension: rcv_field_pop_sw {
    type: string
    sql: ${TABLE}.RCV_FIELD_POP_SW ;;
  }

  dimension: rcv_misc_cost {
    type: number
    sql: ${TABLE}.RCV_MISC_COST ;;
  }

  dimension: rcv_tax_rate {
    type: number
    sql: ${TABLE}.RCV_TAX_RATE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
