# The name of this view in Looker is "Ims Vndr Vnsprc Adj Cost A"
view: ims_vndr_vnsprc_adj_cost_a {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_VNDR_VNSPRC_ADJ_COST_A`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Btl2 Disc Pct" in Explore.

  dimension: btl2_disc_pct {
    type: number
    sql: ${TABLE}.BTL2_DISC_PCT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_btl2_disc_pct {
    type: sum
    sql: ${btl2_disc_pct} ;;
  }

  measure: average_btl2_disc_pct {
    type: average
    sql: ${btl2_disc_pct} ;;
  }

  dimension: btl2_rebate_pct {
    type: number
    sql: ${TABLE}.BTL2_REBATE_PCT ;;
  }

  dimension: btl2_standard_pct {
    type: number
    sql: ${TABLE}.BTL2_STANDARD_PCT ;;
  }

  dimension: btl_disc_pct {
    type: number
    sql: ${TABLE}.BTL_DISC_PCT ;;
  }

  dimension: btl_pct {
    type: number
    sql: ${TABLE}.BTL_PCT ;;
  }

  dimension: btl_rebate_pct {
    type: number
    sql: ${TABLE}.BTL_REBATE_PCT ;;
  }

  dimension: btl_standard_pct {
    type: number
    sql: ${TABLE}.BTL_STANDARD_PCT ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: date_chg_ac {
    type: number
    sql: ${TABLE}.DATE_CHG_AC ;;
  }

  dimension: eff_date_ac {
    type: number
    sql: ${TABLE}.EFF_DATE_AC ;;
  }

  dimension: exp_date_ac {
    type: number
    sql: ${TABLE}.EXP_DATE_AC ;;
  }

  dimension: frt_rate_1 {
    type: number
    sql: ${TABLE}.FRT_RATE_1 ;;
  }

  dimension: frt_rate_2 {
    type: number
    sql: ${TABLE}.FRT_RATE_2 ;;
  }

  dimension: frt_rate_3 {
    type: number
    sql: ${TABLE}.FRT_RATE_3 ;;
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

  dimension: price_key_cat {
    type: string
    sql: ${TABLE}.PRICE_KEY_CAT ;;
  }

  dimension: price_key_subcat {
    type: string
    sql: ${TABLE}.PRICE_KEY_SUBCAT ;;
  }

  dimension: price_type_1 {
    type: string
    sql: ${TABLE}.PRICE_TYPE_1 ;;
  }

  dimension: price_type_2 {
    type: string
    sql: ${TABLE}.PRICE_TYPE_2 ;;
  }

  dimension: risk_factor {
    type: number
    sql: ${TABLE}.RISK_FACTOR ;;
  }

  dimension: sku_specific_btl_ind {
    type: number
    sql: ${TABLE}.SKU_SPECIFIC_BTL_IND ;;
  }

  dimension: vendor_class {
    type: string
    sql: ${TABLE}.VENDOR_CLASS ;;
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
