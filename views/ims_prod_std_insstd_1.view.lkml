# The name of this view in Looker is "Ims Prod Std Insstd 1"
view: ims_prod_std_insstd_1 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_STD_INSSTD_1`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Case Pack Factor 1" in Explore.

  dimension: case_pack_factor_1 {
    type: number
    sql: ${TABLE}.CASE_PACK_FACTOR_1 ;;
  }

  dimension: case_pack_factor_2 {
    type: number
    sql: ${TABLE}.CASE_PACK_FACTOR_2 ;;
  }

  dimension: case_pack_factor_3 {
    type: number
    sql: ${TABLE}.CASE_PACK_FACTOR_3 ;;
  }

  dimension: case_pack_factor_4 {
    type: number
    sql: ${TABLE}.CASE_PACK_FACTOR_4 ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.CATEGORY ;;
  }

  dimension: category_role_cd {
    type: string
    sql: ${TABLE}.CATEGORY_ROLE_CD ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: dollar_discount_1 {
    type: number
    sql: ${TABLE}.DOLLAR_DISCOUNT_1 ;;
  }

  dimension: dollar_discount_2 {
    type: number
    sql: ${TABLE}.DOLLAR_DISCOUNT_2 ;;
  }

  dimension: dollar_discount_3 {
    type: number
    sql: ${TABLE}.DOLLAR_DISCOUNT_3 ;;
  }

  dimension: dollar_discount_4 {
    type: number
    sql: ${TABLE}.DOLLAR_DISCOUNT_4 ;;
  }

  dimension: fixed_sku_price {
    type: number
    sql: ${TABLE}.FIXED_SKU_PRICE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_fixed_sku_price {
    type: sum
    sql: ${fixed_sku_price} ;;
  }

  measure: average_fixed_sku_price {
    type: average
    sql: ${fixed_sku_price} ;;
  }

  dimension: hazmat_id {
    type: string
    sql: ${TABLE}.HAZMAT_ID ;;
  }

  dimension: lang_country_code {
    type: string
    sql: ${TABLE}.LANG_COUNTRY_CODE ;;
  }

  dimension: nbr_of_users {
    type: string
    sql: ${TABLE}.NBR_OF_USERS ;;
  }

  dimension: new_cpu_code {
    type: string
    sql: ${TABLE}.NEW_CPU_CODE ;;
  }

  dimension: new_media {
    type: string
    sql: ${TABLE}.NEW_MEDIA ;;
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

  dimension: opportunity_typ {
    type: string
    sql: ${TABLE}.OPPORTUNITY_TYP ;;
  }

  dimension: percent_discount_1 {
    type: number
    sql: ${TABLE}.PERCENT_DISCOUNT_1 ;;
  }

  dimension: percent_discount_2 {
    type: number
    sql: ${TABLE}.PERCENT_DISCOUNT_2 ;;
  }

  dimension: percent_discount_3 {
    type: number
    sql: ${TABLE}.PERCENT_DISCOUNT_3 ;;
  }

  dimension: percent_discount_4 {
    type: number
    sql: ${TABLE}.PERCENT_DISCOUNT_4 ;;
  }

  dimension: pl1_code {
    type: string
    sql: ${TABLE}.PL1_CODE ;;
  }

  dimension: pl2_code {
    type: string
    sql: ${TABLE}.PL2_CODE ;;
  }

  dimension: pl3_code {
    type: string
    sql: ${TABLE}.PL3_CODE ;;
  }

  dimension: pl4_code {
    type: string
    sql: ${TABLE}.PL4_CODE ;;
  }

  dimension: pl5_code {
    type: string
    sql: ${TABLE}.PL5_CODE ;;
  }

  dimension: pl6_code {
    type: string
    sql: ${TABLE}.PL6_CODE ;;
  }

  dimension: product_strat_cd {
    type: string
    sql: ${TABLE}.PRODUCT_STRAT_CD ;;
  }

  dimension: reference_margin {
    type: number
    sql: ${TABLE}.REFERENCE_MARGIN ;;
  }

  dimension: reference_price {
    type: number
    sql: ${TABLE}.REFERENCE_PRICE ;;
  }

  dimension: segment_ind {
    type: string
    sql: ${TABLE}.SEGMENT_IND ;;
  }

  dimension: seq_nbr {
    type: number
    sql: ${TABLE}.SEQ_NBR ;;
  }

  dimension: strategy_level_id {
    type: string
    sql: ${TABLE}.STRATEGY_LEVEL_ID ;;
  }

  dimension: sub_cat {
    type: string
    sql: ${TABLE}.SUB_CAT ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.VERSION ;;
  }

  dimension: wher_scn_varient {
    type: string
    sql: ${TABLE}.WHER_SCN_VARIENT ;;
  }

  dimension: wts {
    type: string
    sql: ${TABLE}.WTS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
