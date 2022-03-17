# The name of this view in Looker is "Ims Prod Spec Promo Insmsc Sp"
view: ims_prod_spec_promo_insmsc_sp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_SPEC_PROMO_INSMSC_SP`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Br Ind" in Explore.

  dimension: br_ind {
    type: string
    sql: ${TABLE}.BR_IND ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
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

  dimension: segment_ind {
    type: string
    sql: ${TABLE}.SEGMENT_IND ;;
  }

  dimension: seq_nbr {
    type: number
    sql: ${TABLE}.SEQ_NBR ;;
  }

  dimension: spec_col_ind {
    type: string
    sql: ${TABLE}.SPEC_COL_IND ;;
  }

  dimension: spec_col_pct {
    type: number
    sql: ${TABLE}.SPEC_COL_PCT ;;
  }

  dimension: spec_eff_date {
    type: number
    sql: ${TABLE}.SPEC_EFF_DATE ;;
  }

  dimension: spec_exp_date {
    type: number
    sql: ${TABLE}.SPEC_EXP_DATE ;;
  }

  dimension: spec_free_part {
    type: string
    sql: ${TABLE}.SPEC_FREE_PART ;;
  }

  dimension: spec_free_qty {
    type: number
    sql: ${TABLE}.SPEC_FREE_QTY ;;
  }

  dimension: spec_group_code {
    type: string
    sql: ${TABLE}.SPEC_GROUP_CODE ;;
  }

  dimension: spec_min_qty {
    type: number
    sql: ${TABLE}.SPEC_MIN_QTY ;;
  }

  dimension: spec_price {
    type: number
    sql: ${TABLE}.SPEC_PRICE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_spec_price {
    type: sum
    sql: ${spec_price} ;;
  }

  measure: average_spec_price {
    type: average
    sql: ${spec_price} ;;
  }

  dimension: spec_price_sw {
    type: string
    sql: ${TABLE}.SPEC_PRICE_SW ;;
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
