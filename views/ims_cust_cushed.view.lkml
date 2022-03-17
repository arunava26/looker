# The name of this view in Looker is "Ims Cust Cushed"
view: ims_cust_cushed {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_CUST_CUSHED`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acctmgr Bdm" in Explore.

  dimension: acctmgr_bdm {
    type: string
    sql: ${TABLE}.ACCTMGR_BDM ;;
  }

  dimension: acctmgr_cmd_nma {
    type: string
    sql: ${TABLE}.ACCTMGR_CMD_NMA ;;
  }

  dimension: acctmgr_govt {
    type: string
    sql: ${TABLE}.ACCTMGR_GOVT ;;
  }

  dimension: acctmgr_hp {
    type: string
    sql: ${TABLE}.ACCTMGR_HP ;;
  }

  dimension: acctmgr_sun {
    type: string
    sql: ${TABLE}.ACCTMGR_SUN ;;
  }

  dimension: acctmgr_tid {
    type: string
    sql: ${TABLE}.ACCTMGR_TID ;;
  }

  dimension: acop_group {
    type: string
    sql: ${TABLE}.ACOP_GROUP ;;
  }

  dimension: acop_restrict_ind {
    type: string
    sql: ${TABLE}.ACOP_RESTRICT_IND ;;
  }

  dimension: active_currchg_req_sw {
    type: string
    sql: ${TABLE}.ACTIVE_CURRCHG_REQ_SW ;;
  }

  dimension: addr_chg_sw {
    type: string
    sql: ${TABLE}.ADDR_CHG_SW ;;
  }

  dimension: age_1 {
    type: number
    sql: ${TABLE}.AGE_1 ;;
  }

  dimension: age_2 {
    type: number
    sql: ${TABLE}.AGE_2 ;;
  }

  dimension: age_3 {
    type: number
    sql: ${TABLE}.AGE_3 ;;
  }

  dimension: age_4 {
    type: number
    sql: ${TABLE}.AGE_4 ;;
  }

  dimension: age_5 {
    type: number
    sql: ${TABLE}.AGE_5 ;;
  }

  dimension: age_6 {
    type: number
    sql: ${TABLE}.AGE_6 ;;
  }

  dimension: age_type {
    type: string
    sql: ${TABLE}.AGE_TYPE ;;
  }

  dimension: agency_carrier {
    type: string
    sql: ${TABLE}.AGENCY_CARRIER ;;
  }

  dimension: agency_flag {
    type: string
    sql: ${TABLE}.AGENCY_FLAG ;;
  }

  dimension: agency_reports {
    type: string
    sql: ${TABLE}.AGENCY_REPORTS ;;
  }

  dimension: agency_ship_from {
    type: string
    sql: ${TABLE}.AGENCY_SHIP_FROM ;;
  }

  dimension: agency_type {
    type: string
    sql: ${TABLE}.AGENCY_TYPE ;;
  }

  dimension: alliance_sw {
    type: string
    sql: ${TABLE}.ALLIANCE_SW ;;
  }

  dimension: allow_br_xfer_flag {
    type: string
    sql: ${TABLE}.ALLOW_BR_XFER_FLAG ;;
  }

  dimension: ani_ctry1 {
    type: string
    sql: ${TABLE}.ANI_CTRY1 ;;
  }

  dimension: ani_ctry2 {
    type: string
    sql: ${TABLE}.ANI_CTRY2 ;;
  }

  dimension: ani_misc {
    type: string
    sql: ${TABLE}.ANI_MISC ;;
  }

  dimension: ani_phone1 {
    type: string
    sql: ${TABLE}.ANI_PHONE1 ;;
  }

  dimension: ani_phone2 {
    type: string
    sql: ${TABLE}.ANI_PHONE2 ;;
  }

  dimension: ap_check_sw {
    type: string
    sql: ${TABLE}.AP_CHECK_SW ;;
  }

  dimension: apply_sw {
    type: string
    sql: ${TABLE}.APPLY_SW ;;
  }

  dimension: ar_daily_pstdue_risk_class {
    type: string
    sql: ${TABLE}.AR_DAILY_PSTDUE_RISK_CLASS ;;
  }

  dimension: ar_daily_risk_class {
    type: string
    sql: ${TABLE}.AR_DAILY_RISK_CLASS ;;
  }

  dimension: ar_daily_risk_date {
    type: number
    sql: ${TABLE}.AR_DAILY_RISK_DATE ;;
  }

  dimension: ar_pstdue_risk_class {
    type: string
    sql: ${TABLE}.AR_PSTDUE_RISK_CLASS ;;
  }

  dimension: ar_risk_class {
    type: string
    sql: ${TABLE}.AR_RISK_CLASS ;;
  }

  dimension: asset_tag_method {
    type: string
    sql: ${TABLE}.ASSET_TAG_METHOD ;;
  }

  dimension: auto_credit_memo {
    type: string
    sql: ${TABLE}.AUTO_CREDIT_MEMO ;;
  }

  dimension: auto_obsolete_sw {
    type: string
    sql: ${TABLE}.AUTO_OBSOLETE_SW ;;
  }

  dimension: auto_print_bo_sw {
    type: string
    sql: ${TABLE}.AUTO_PRINT_BO_SW ;;
  }

  dimension: autocrdb_print_sw {
    type: string
    sql: ${TABLE}.AUTOCRDB_PRINT_SW ;;
  }

  dimension: avg_daily_balance {
    type: number
    sql: ${TABLE}.AVG_DAILY_BALANCE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_avg_daily_balance {
    type: sum
    sql: ${avg_daily_balance} ;;
  }

  measure: average_avg_daily_balance {
    type: average
    sql: ${avg_daily_balance} ;;
  }

  dimension: avg_nbr_days_pay {
    type: number
    sql: ${TABLE}.AVG_NBR_DAYS_PAY ;;
  }

  dimension: batch_ship_sw {
    type: string
    sql: ${TABLE}.BATCH_SHIP_SW ;;
  }

  dimension: big_account {
    type: string
    sql: ${TABLE}.BIG_ACCOUNT ;;
  }

  dimension: bkorder_compare_type {
    type: string
    sql: ${TABLE}.BKORDER_COMPARE_TYPE ;;
  }

  dimension: bkorder_mail_days {
    type: number
    sql: ${TABLE}.BKORDER_MAIL_DAYS ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: btc_flg {
    type: string
    sql: ${TABLE}.BTC_FLG ;;
  }

  dimension: business_type {
    type: string
    sql: ${TABLE}.BUSINESS_TYPE ;;
  }

  dimension: business_type_old {
    type: string
    sql: ${TABLE}.BUSINESS_TYPE_OLD ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.CAMPAIGN ;;
  }

  dimension: campaign_cnt {
    type: number
    sql: ${TABLE}.CAMPAIGN_CNT ;;
  }

  dimension: caps_order_print_sw {
    type: string
    sql: ${TABLE}.CAPS_ORDER_PRINT_SW ;;
  }

  dimension: cfg_asset_tags {
    type: string
    sql: ${TABLE}.CFG_ASSET_TAGS ;;
  }

  dimension: cm_by_store_nbr_sw {
    type: string
    sql: ${TABLE}.CM_BY_STORE_NBR_SW ;;
  }

  dimension: color_alert {
    type: string
    sql: ${TABLE}.COLOR_ALERT ;;
  }

  dimension: color_override_exp_date {
    type: number
    sql: ${TABLE}.COLOR_OVERRIDE_EXP_DATE ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: config_pricing {
    type: string
    sql: ${TABLE}.CONFIG_PRICING ;;
  }

  dimension: cons_max_days {
    type: number
    sql: ${TABLE}.CONS_MAX_DAYS ;;
  }

  dimension: coop_end_date {
    type: number
    sql: ${TABLE}.COOP_END_DATE ;;
  }

  dimension: coop_flag {
    type: string
    sql: ${TABLE}.COOP_FLAG ;;
  }

  dimension: coop_start_date {
    type: number
    sql: ${TABLE}.COOP_START_DATE ;;
  }

  dimension: cpa_flg {
    type: string
    sql: ${TABLE}.CPA_FLG ;;
  }

  dimension: cpa_max_days {
    type: number
    sql: ${TABLE}.CPA_MAX_DAYS ;;
  }

  dimension: cr_code {
    type: string
    sql: ${TABLE}.CR_CODE ;;
  }

  dimension: cr_letter_code {
    type: string
    sql: ${TABLE}.CR_LETTER_CODE ;;
  }

  dimension: cr_limit {
    type: number
    sql: ${TABLE}.CR_LIMIT ;;
  }

  dimension: cr_order_total {
    type: number
    sql: ${TABLE}.CR_ORDER_TOTAL ;;
  }

  dimension: cred_matrix_date {
    type: number
    sql: ${TABLE}.CRED_MATRIX_DATE ;;
  }

  dimension: cred_matrix_flag {
    type: string
    sql: ${TABLE}.CRED_MATRIX_FLAG ;;
  }

  dimension: credit_card_fee {
    type: string
    sql: ${TABLE}.CREDIT_CARD_FEE ;;
  }

  dimension: credit_cust_group {
    type: string
    sql: ${TABLE}.CREDIT_CUST_GROUP ;;
  }

  dimension: credit_insurance_nbr {
    type: string
    sql: ${TABLE}.CREDIT_INSURANCE_NBR ;;
  }

  dimension: credit_program {
    type: string
    sql: ${TABLE}.CREDIT_PROGRAM ;;
  }

  dimension: credit_program_date_chg {
    type: number
    sql: ${TABLE}.CREDIT_PROGRAM_DATE_CHG ;;
  }

  dimension: credit_program_status {
    type: string
    sql: ${TABLE}.CREDIT_PROGRAM_STATUS ;;
  }

  dimension: credit_rpt_group {
    type: string
    sql: ${TABLE}.CREDIT_RPT_GROUP ;;
  }

  dimension: cu_3_rd_party_edit_sw {
    type: string
    sql: ${TABLE}.CU_3RD_PARTY_EDIT_SW ;;
  }

  dimension: cu_895_on_2_nd_order_amt {
    type: number
    sql: ${TABLE}.CU_895_ON_2ND_ORDER_AMT ;;
  }

  dimension: cu_895_on_2_nd_order_sw {
    type: string
    sql: ${TABLE}.CU_895_ON_2ND_ORDER_SW ;;
  }

  dimension: curr {
    type: number
    sql: ${TABLE}.CURR ;;
  }

  dimension: curr_discounts {
    type: number
    sql: ${TABLE}.CURR_DISCOUNTS ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.CURRENCY_CODE ;;
  }

  dimension: currency_date_update {
    type: number
    sql: ${TABLE}.CURRENCY_DATE_UPDATE ;;
  }

  dimension: cusmsc_acop_seg_count {
    type: number
    sql: ${TABLE}.CUSMSC_ACOP_SEG_COUNT ;;
  }

  dimension: cust_invoice_flag {
    type: string
    sql: ${TABLE}.CUST_INVOICE_FLAG ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: cust_no_rtc_sw {
    type: string
    sql: ${TABLE}.CUST_NO_RTC_SW ;;
  }

  dimension: cust_req_sn_sw {
    type: string
    sql: ${TABLE}.CUST_REQ_SN_SW ;;
  }

  dimension: cust_tax_type {
    type: string
    sql: ${TABLE}.CUST_TAX_TYPE ;;
  }

  dimension: cust_type {
    type: string
    sql: ${TABLE}.CUST_TYPE ;;
  }

  dimension: d_rcd {
    type: string
    sql: ${TABLE}.D_RCD ;;
  }

  dimension: damaged_pct {
    type: number
    sql: ${TABLE}.DAMAGED_PCT ;;
  }

  dimension: date_created {
    type: number
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension: date_last_change {
    type: number
    sql: ${TABLE}.DATE_LAST_CHANGE ;;
  }

  dimension: days_rma_to_remain_open {
    type: number
    sql: ${TABLE}.DAYS_RMA_TO_REMAIN_OPEN ;;
  }

  dimension: db_date {
    type: number
    sql: ${TABLE}.DB_DATE ;;
  }

  dimension: db_nbr {
    type: string
    sql: ${TABLE}.DB_NBR ;;
  }

  dimension: db_rating {
    type: string
    sql: ${TABLE}.DB_RATING ;;
  }

  dimension: default_del_rate {
    type: number
    sql: ${TABLE}.DEFAULT_DEL_RATE ;;
  }

  dimension: default_rent_rate {
    type: number
    sql: ${TABLE}.DEFAULT_RENT_RATE ;;
  }

  dimension: defective_pct {
    type: number
    sql: ${TABLE}.DEFECTIVE_PCT ;;
  }

  dimension: delivery_chg_sw {
    type: string
    sql: ${TABLE}.DELIVERY_CHG_SW ;;
  }

  dimension: delivery_mode {
    type: string
    sql: ${TABLE}.DELIVERY_MODE ;;
  }

  dimension: delivery_restriction {
    type: string
    sql: ${TABLE}.DELIVERY_RESTRICTION ;;
  }

  dimension: df_number_of_days {
    type: string
    sql: ${TABLE}.DF_NUMBER_OF_DAYS ;;
  }

  dimension: direct_ship_amt {
    type: number
    sql: ${TABLE}.DIRECT_SHIP_AMT ;;
  }

  dimension: disc_override_pct {
    type: number
    sql: ${TABLE}.DISC_OVERRIDE_PCT ;;
  }

  dimension: discount_level {
    type: string
    sql: ${TABLE}.DISCOUNT_LEVEL ;;
  }

  dimension: discount_sw {
    type: string
    sql: ${TABLE}.DISCOUNT_SW ;;
  }

  dimension: disputed_amt {
    type: number
    sql: ${TABLE}.DISPUTED_AMT ;;
  }

  dimension: dm_number_of_days {
    type: string
    sql: ${TABLE}.DM_NUMBER_OF_DAYS ;;
  }

  dimension: drafts_ip {
    type: number
    sql: ${TABLE}.DRAFTS_IP ;;
  }

  dimension: dun_code {
    type: string
    sql: ${TABLE}.DUN_CODE ;;
  }

  dimension: dun_letter_number {
    type: number
    sql: ${TABLE}.DUN_LETTER_NUMBER ;;
  }

  dimension: dun_t_count {
    type: number
    sql: ${TABLE}.DUN_T_COUNT ;;
  }

  dimension: ecom_reserve_flag {
    type: string
    sql: ${TABLE}.ECOM_RESERVE_FLAG ;;
  }

  dimension: edi_co {
    type: string
    sql: ${TABLE}.EDI_CO ;;
  }

  dimension: edi_ord_time_allowed {
    type: number
    sql: ${TABLE}.EDI_ORD_TIME_ALLOWED ;;
  }

  dimension: ein {
    type: string
    sql: ${TABLE}.EIN ;;
  }

  dimension: end_user_returns_brn {
    type: string
    sql: ${TABLE}.END_USER_RETURNS_BRN ;;
  }

  dimension: end_user_returns_sw {
    type: string
    sql: ${TABLE}.END_USER_RETURNS_SW ;;
  }

  dimension: end_user_rma_code {
    type: string
    sql: ${TABLE}.END_USER_RMA_CODE ;;
  }

  dimension: enduser_flag {
    type: string
    sql: ${TABLE}.ENDUSER_FLAG ;;
  }

  dimension: epg_flag {
    type: string
    sql: ${TABLE}.EPG_FLAG ;;
  }

  dimension: export_fulfillment_sw {
    type: string
    sql: ${TABLE}.EXPORT_FULFILLMENT_SW ;;
  }

  dimension: ext_fee_pct {
    type: string
    sql: ${TABLE}.EXT_FEE_PCT ;;
  }

  dimension: ext_max_days {
    type: number
    sql: ${TABLE}.EXT_MAX_DAYS ;;
  }

  dimension: extra_copies_cnt {
    type: string
    sql: ${TABLE}.EXTRA_COPIES_CNT ;;
  }

  dimension: fax_nbr {
    type: string
    sql: ${TABLE}.FAX_NBR ;;
  }

  dimension: ffr_code {
    type: string
    sql: ${TABLE}.FFR_CODE ;;
  }

  dimension: ffs_program {
    type: string
    sql: ${TABLE}.FFS_PROGRAM ;;
  }

  dimension: ffs_program_date_chg {
    type: number
    sql: ${TABLE}.FFS_PROGRAM_DATE_CHG ;;
  }

  dimension: ffs_program_status {
    type: string
    sql: ${TABLE}.FFS_PROGRAM_STATUS ;;
  }

  dimension: frt_bkorder_charge {
    type: string
    sql: ${TABLE}.FRT_BKORDER_CHARGE ;;
  }

  dimension: frt_limit_amt {
    type: number
    sql: ${TABLE}.FRT_LIMIT_AMT ;;
  }

  dimension: frt_revenue_amt {
    type: number
    sql: ${TABLE}.FRT_REVENUE_AMT ;;
  }

  dimension: fulfillment_amt_pct {
    type: number
    sql: ${TABLE}.FULFILLMENT_AMT_PCT ;;
  }

  dimension: fulfillment_charge_sw {
    type: string
    sql: ${TABLE}.FULFILLMENT_CHARGE_SW ;;
  }

  dimension: fulfillment_invoice_sw {
    type: string
    sql: ${TABLE}.FULFILLMENT_INVOICE_SW ;;
  }

  dimension: fulfillment_sw {
    type: string
    sql: ${TABLE}.FULFILLMENT_SW ;;
  }

  dimension: general_max_days {
    type: number
    sql: ${TABLE}.GENERAL_MAX_DAYS ;;
  }

  dimension: generate_cm_cycle_sw {
    type: string
    sql: ${TABLE}.GENERATE_CM_CYCLE_SW ;;
  }

  dimension: govt_bdm_reps {
    type: string
    sql: ${TABLE}.GOVT_BDM_REPS ;;
  }

  dimension: hi_cr_amt {
    type: number
    sql: ${TABLE}.HI_CR_AMT ;;
  }

  dimension: hi_cr_amt_prev_year {
    type: number
    sql: ${TABLE}.HI_CR_AMT_PREV_YEAR ;;
  }

  dimension: hi_cr_date {
    type: number
    sql: ${TABLE}.HI_CR_DATE ;;
  }

  dimension: hi_cr_date_prev_year {
    type: number
    sql: ${TABLE}.HI_CR_DATE_PREV_YEAR ;;
  }

  dimension: ie_mtch {
    type: string
    sql: ${TABLE}.IE_MTCH ;;
  }

  dimension: im_online_sw {
    type: string
    sql: ${TABLE}.IM_ONLINE_SW ;;
  }

  dimension: im_pays_grnd_sw {
    type: string
    sql: ${TABLE}.IM_PAYS_GRND_SW ;;
  }

  dimension: imagine_enroll_date {
    type: number
    sql: ${TABLE}.IMAGINE_ENROLL_DATE ;;
  }

  dimension: imagine_flag {
    type: string
    sql: ${TABLE}.IMAGINE_FLAG ;;
  }

  dimension: ingram_ovr_itm_price_cd {
    type: string
    sql: ${TABLE}.INGRAM_OVR_ITM_PRICE_CD ;;
  }

  dimension: ingram_parts_on_iarc_sw {
    type: string
    sql: ${TABLE}.INGRAM_PARTS_ON_IARC_SW ;;
  }

  dimension: instant_rebate_sw {
    type: string
    sql: ${TABLE}.INSTANT_REBATE_SW ;;
  }

  dimension: internet_sw {
    type: string
    sql: ${TABLE}.INTERNET_SW ;;
  }

  dimension: inventory_hold_sw {
    type: string
    sql: ${TABLE}.INVENTORY_HOLD_SW ;;
  }

  dimension: invoice_ser_nbr_sw {
    type: string
    sql: ${TABLE}.INVOICE_SER_NBR_SW ;;
  }

  dimension: is_hp1 {
    type: string
    sql: ${TABLE}.IS_HP1 ;;
  }

  dimension: is_hp2 {
    type: string
    sql: ${TABLE}.IS_HP2 ;;
  }

  dimension: is_sun {
    type: string
    sql: ${TABLE}.IS_SUN ;;
  }

  dimension: is_tid {
    type: string
    sql: ${TABLE}.IS_TID ;;
  }

  dimension: isg_flg {
    type: string
    sql: ${TABLE}.ISG_FLG ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.LANGUAGE_CODE ;;
  }

  dimension: lap_max_days {
    type: number
    sql: ${TABLE}.LAP_MAX_DAYS ;;
  }

  dimension: last_cr_let_date {
    type: number
    sql: ${TABLE}.LAST_CR_LET_DATE ;;
  }

  dimension: last_credit_date_update {
    type: number
    sql: ${TABLE}.LAST_CREDIT_DATE_UPDATE ;;
  }

  dimension: last_dun_date {
    type: number
    sql: ${TABLE}.LAST_DUN_DATE ;;
  }

  dimension: last_pymt_date {
    type: number
    sql: ${TABLE}.LAST_PYMT_DATE ;;
  }

  dimension: last_stmt_bal {
    type: number
    sql: ${TABLE}.LAST_STMT_BAL ;;
  }

  dimension: last_stmt_date {
    type: number
    sql: ${TABLE}.LAST_STMT_DATE ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}.LEAD_SOURCE ;;
  }

  dimension: link_rma_dms_ind {
    type: string
    sql: ${TABLE}.LINK_RMA_DMS_IND ;;
  }

  dimension: maj_accts {
    type: string
    sql: ${TABLE}.MAJ_ACCTS ;;
  }

  dimension: max_transit_days {
    type: string
    sql: ${TABLE}.MAX_TRANSIT_DAYS ;;
  }

  dimension: min_order_chrg_amt_pct {
    type: number
    sql: ${TABLE}.MIN_ORDER_CHRG_AMT_PCT ;;
  }

  dimension: min_order_chrg_sw {
    type: string
    sql: ${TABLE}.MIN_ORDER_CHRG_SW ;;
  }

  dimension: min_order_limit {
    type: number
    sql: ${TABLE}.MIN_ORDER_LIMIT ;;
  }

  dimension: mnfrt_by_oe_meth_ind {
    type: string
    sql: ${TABLE}.MNFRT_BY_OE_METH_IND ;;
  }

  dimension: mrktng_prog {
    type: string
    sql: ${TABLE}.MRKTNG_PROG ;;
  }

  dimension: mstr_br_nbr {
    type: string
    sql: ${TABLE}.MSTR_BR_NBR ;;
  }

  dimension: mstr_cust_nbr {
    type: string
    sql: ${TABLE}.MSTR_CUST_NBR ;;
  }

  dimension: mtd_payments {
    type: number
    sql: ${TABLE}.MTD_PAYMENTS ;;
  }

  dimension: mult_br_auto_alloc_sw {
    type: string
    sql: ${TABLE}.MULT_BR_AUTO_ALLOC_SW ;;
  }

  dimension: multiple_ticket_ind {
    type: string
    sql: ${TABLE}.MULTIPLE_TICKET_IND ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: nbr_of_dependents {
    type: number
    sql: ${TABLE}.NBR_OF_DEPENDENTS ;;
  }

  dimension: negative_item_total {
    type: number
    sql: ${TABLE}.NEGATIVE_ITEM_TOTAL ;;
  }

  dimension: negotiate_fee_amt {
    type: number
    sql: ${TABLE}.NEGOTIATE_FEE_AMT ;;
  }

  dimension: next_credit_update {
    type: number
    sql: ${TABLE}.NEXT_CREDIT_UPDATE ;;
  }

  dimension: no_charge_interest {
    type: string
    sql: ${TABLE}.NO_CHARGE_INTEREST ;;
  }

  dimension: no_negotiation_ovrd_sw {
    type: string
    sql: ${TABLE}.NO_NEGOTIATION_OVRD_SW ;;
  }

  dimension: no_price_ovrd_sw {
    type: string
    sql: ${TABLE}.NO_PRICE_OVRD_SW ;;
  }

  dimension: no_sku_pct_override {
    type: string
    sql: ${TABLE}.NO_SKU_PCT_OVERRIDE ;;
  }

  dimension: notes_sw {
    type: string
    sql: ${TABLE}.NOTES_SW ;;
  }

  dimension: notification {
    type: string
    sql: ${TABLE}.NOTIFICATION ;;
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

  dimension: open_orders {
    type: number
    sql: ${TABLE}.OPEN_ORDERS ;;
  }

  dimension: open_pc_file_name {
    type: string
    sql: ${TABLE}.OPEN_PC_FILE_NAME ;;
  }

  dimension: order_hold_days {
    type: number
    sql: ${TABLE}.ORDER_HOLD_DAYS ;;
  }

  dimension: order_hold_pct {
    type: number
    sql: ${TABLE}.ORDER_HOLD_PCT ;;
  }

  dimension: other_lookup {
    type: string
    sql: ${TABLE}.OTHER_LOOKUP ;;
  }

  dimension: ovc_charge {
    type: string
    sql: ${TABLE}.OVC_CHARGE ;;
  }

  dimension: overgood_pct {
    type: number
    sql: ${TABLE}.OVERGOOD_PCT ;;
  }

  dimension: overgood_price_sw {
    type: string
    sql: ${TABLE}.OVERGOOD_PRICE_SW ;;
  }

  dimension: parent_br_nbr {
    type: string
    sql: ${TABLE}.PARENT_BR_NBR ;;
  }

  dimension: parent_cust_nbr {
    type: string
    sql: ${TABLE}.PARENT_CUST_NBR ;;
  }

  dimension: pd_date_last_change {
    type: number
    sql: ${TABLE}.PD_DATE_LAST_CHANGE ;;
  }

  dimension: pd_opid {
    type: string
    sql: ${TABLE}.PD_OPID ;;
  }

  dimension: place_orders_sls_hld {
    type: string
    sql: ${TABLE}.PLACE_ORDERS_SLS_HLD ;;
  }

  dimension: po_barcode_ind {
    type: string
    sql: ${TABLE}.PO_BARCODE_IND ;;
  }

  dimension: postdated_check_total {
    type: number
    sql: ${TABLE}.POSTDATED_CHECK_TOTAL ;;
  }

  dimension: pp_cost_price_flag {
    type: string
    sql: ${TABLE}.PP_COST_PRICE_FLAG ;;
  }

  dimension: pp_crdt_level_flag {
    type: string
    sql: ${TABLE}.PP_CRDT_LEVEL_FLAG ;;
  }

  dimension: pp_cust_lookback_days {
    type: string
    sql: ${TABLE}.PP_CUST_LOOKBACK_DAYS ;;
  }

  dimension: pp_notify_flag {
    type: string
    sql: ${TABLE}.PP_NOTIFY_FLAG ;;
  }

  dimension: pp_reprice_flag {
    type: string
    sql: ${TABLE}.PP_REPRICE_FLAG ;;
  }

  dimension: prev_currency_code {
    type: string
    sql: ${TABLE}.PREV_CURRENCY_CODE ;;
  }

  dimension: prev_discounts {
    type: number
    sql: ${TABLE}.PREV_DISCOUNTS ;;
  }

  dimension: price_code {
    type: string
    sql: ${TABLE}.PRICE_CODE ;;
  }

  dimension: price_protection_sw {
    type: string
    sql: ${TABLE}.PRICE_PROTECTION_SW ;;
  }

  dimension: price_update {
    type: string
    sql: ${TABLE}.PRICE_UPDATE ;;
  }

  dimension: print_all_fees {
    type: string
    sql: ${TABLE}.PRINT_ALL_FEES ;;
  }

  dimension: print_credit_memo {
    type: string
    sql: ${TABLE}.PRINT_CREDIT_MEMO ;;
  }

  dimension: print_dba_fulfil {
    type: string
    sql: ${TABLE}.PRINT_DBA_FULFIL ;;
  }

  dimension: print_pd_terms_sw {
    type: string
    sql: ${TABLE}.PRINT_PD_TERMS_SW ;;
  }

  dimension: print_reseller_ship_fr {
    type: string
    sql: ${TABLE}.PRINT_RESELLER_SHIP_FR ;;
  }

  dimension: print_reseller_sku {
    type: string
    sql: ${TABLE}.PRINT_RESELLER_SKU ;;
  }

  dimension: print_rsl_logo_fulfil {
    type: string
    sql: ${TABLE}.PRINT_RSL_LOGO_FULFIL ;;
  }

  dimension: print_rsl_logo_non_ful {
    type: string
    sql: ${TABLE}.PRINT_RSL_LOGO_NON_FUL ;;
  }

  dimension: print_single_price {
    type: string
    sql: ${TABLE}.PRINT_SINGLE_PRICE ;;
  }

  dimension: print_static_msg {
    type: string
    sql: ${TABLE}.PRINT_STATIC_MSG ;;
  }

  dimension: print_suggested_retail {
    type: string
    sql: ${TABLE}.PRINT_SUGGESTED_RETAIL ;;
  }

  dimension: print_suggested_rtl_ful {
    type: string
    sql: ${TABLE}.PRINT_SUGGESTED_RTL_FUL ;;
  }

  dimension: print_vendor_logo {
    type: string
    sql: ${TABLE}.PRINT_VENDOR_LOGO ;;
  }

  dimension: print_watermark_fulfil {
    type: string
    sql: ${TABLE}.PRINT_WATERMARK_FULFIL ;;
  }

  dimension: print_watermark_non_ful {
    type: string
    sql: ${TABLE}.PRINT_WATERMARK_NON_FUL ;;
  }

  dimension: profitability_factor {
    type: number
    sql: ${TABLE}.PROFITABILITY_FACTOR ;;
  }

  dimension: program_type1 {
    type: string
    sql: ${TABLE}.PROGRAM_TYPE1 ;;
  }

  dimension: program_type2 {
    type: string
    sql: ${TABLE}.PROGRAM_TYPE2 ;;
  }

  dimension: promotional_sw {
    type: string
    sql: ${TABLE}.PROMOTIONAL_SW ;;
  }

  dimension: pxlmst_br_nbr {
    type: string
    sql: ${TABLE}.PXLMST_BR_NBR ;;
  }

  dimension: pxlmst_cust_nbr {
    type: string
    sql: ${TABLE}.PXLMST_CUST_NBR ;;
  }

  dimension: pxlmst_date {
    type: number
    sql: ${TABLE}.PXLMST_DATE ;;
  }

  dimension: pxlmst_special_pricing_sw {
    type: string
    sql: ${TABLE}.PXLMST_SPECIAL_PRICING_SW ;;
  }

  dimension: q_rcd {
    type: string
    sql: ${TABLE}.Q_RCD ;;
  }

  dimension: refer_direct_ovride_sw {
    type: string
    sql: ${TABLE}.REFER_DIRECT_OVRIDE_SW ;;
  }

  dimension: rental_chg_sw {
    type: string
    sql: ${TABLE}.RENTAL_CHG_SW ;;
  }

  dimension: req_serialize_sw {
    type: string
    sql: ${TABLE}.REQ_SERIALIZE_SW ;;
  }

  dimension: req_store_nbr_sw {
    type: string
    sql: ${TABLE}.REQ_STORE_NBR_SW ;;
  }

  dimension: resale_hold_flg {
    type: string
    sql: ${TABLE}.RESALE_HOLD_FLG ;;
  }

  dimension: reseller_in_transit_flag {
    type: string
    sql: ${TABLE}.RESELLER_IN_TRANSIT_FLAG ;;
  }

  dimension: reseller_vendor {
    type: string
    sql: ${TABLE}.RESELLER_VENDOR ;;
  }

  dimension: reserve_inventory_sw {
    type: string
    sql: ${TABLE}.RESERVE_INVENTORY_SW ;;
  }

  dimension: ret_addr_override_flag {
    type: string
    sql: ${TABLE}.RET_ADDR_OVERRIDE_FLAG ;;
  }

  dimension: return_alliance_units_pct {
    type: number
    sql: ${TABLE}.RETURN_ALLIANCE_UNITS_PCT ;;
  }

  dimension: return_alliance_value_pct {
    type: number
    sql: ${TABLE}.RETURN_ALLIANCE_VALUE_PCT ;;
  }

  dimension: return_order_value {
    type: number
    sql: ${TABLE}.RETURN_ORDER_VALUE ;;
  }

  dimension: return_rma_value {
    type: number
    sql: ${TABLE}.RETURN_RMA_VALUE ;;
  }

  dimension: return_units_pct {
    type: number
    sql: ${TABLE}.RETURN_UNITS_PCT ;;
  }

  dimension: return_value_pct {
    type: number
    sql: ${TABLE}.RETURN_VALUE_PCT ;;
  }

  dimension: returns_br {
    type: string
    sql: ${TABLE}.RETURNS_BR ;;
  }

  dimension: rma_rollup_br {
    type: string
    sql: ${TABLE}.RMA_ROLLUP_BR ;;
  }

  dimension: rma_rollup_nbr {
    type: string
    sql: ${TABLE}.RMA_ROLLUP_NBR ;;
  }

  dimension: sales_flag_1 {
    type: string
    sql: ${TABLE}.SALES_FLAG_1 ;;
  }

  dimension: sales_flag_2 {
    type: string
    sql: ${TABLE}.SALES_FLAG_2 ;;
  }

  dimension: sales_flag_3 {
    type: string
    sql: ${TABLE}.SALES_FLAG_3 ;;
  }

  dimension: sales_flag_4 {
    type: string
    sql: ${TABLE}.SALES_FLAG_4 ;;
  }

  dimension: sales_ops_1 {
    type: string
    sql: ${TABLE}.SALES_OPS_1 ;;
  }

  dimension: sales_ops_10 {
    type: string
    sql: ${TABLE}.SALES_OPS_10 ;;
  }

  dimension: sales_ops_11 {
    type: string
    sql: ${TABLE}.SALES_OPS_11 ;;
  }

  dimension: sales_ops_12 {
    type: string
    sql: ${TABLE}.SALES_OPS_12 ;;
  }

  dimension: sales_ops_13 {
    type: string
    sql: ${TABLE}.SALES_OPS_13 ;;
  }

  dimension: sales_ops_14 {
    type: string
    sql: ${TABLE}.SALES_OPS_14 ;;
  }

  dimension: sales_ops_15 {
    type: string
    sql: ${TABLE}.SALES_OPS_15 ;;
  }

  dimension: sales_ops_16 {
    type: string
    sql: ${TABLE}.SALES_OPS_16 ;;
  }

  dimension: sales_ops_17 {
    type: string
    sql: ${TABLE}.SALES_OPS_17 ;;
  }

  dimension: sales_ops_18 {
    type: string
    sql: ${TABLE}.SALES_OPS_18 ;;
  }

  dimension: sales_ops_19 {
    type: string
    sql: ${TABLE}.SALES_OPS_19 ;;
  }

  dimension: sales_ops_2 {
    type: string
    sql: ${TABLE}.SALES_OPS_2 ;;
  }

  dimension: sales_ops_20 {
    type: string
    sql: ${TABLE}.SALES_OPS_20 ;;
  }

  dimension: sales_ops_21 {
    type: string
    sql: ${TABLE}.SALES_OPS_21 ;;
  }

  dimension: sales_ops_22 {
    type: string
    sql: ${TABLE}.SALES_OPS_22 ;;
  }

  dimension: sales_ops_23 {
    type: string
    sql: ${TABLE}.SALES_OPS_23 ;;
  }

  dimension: sales_ops_24 {
    type: string
    sql: ${TABLE}.SALES_OPS_24 ;;
  }

  dimension: sales_ops_25 {
    type: string
    sql: ${TABLE}.SALES_OPS_25 ;;
  }

  dimension: sales_ops_3 {
    type: string
    sql: ${TABLE}.SALES_OPS_3 ;;
  }

  dimension: sales_ops_4 {
    type: string
    sql: ${TABLE}.SALES_OPS_4 ;;
  }

  dimension: sales_ops_5 {
    type: string
    sql: ${TABLE}.SALES_OPS_5 ;;
  }

  dimension: sales_ops_6 {
    type: string
    sql: ${TABLE}.SALES_OPS_6 ;;
  }

  dimension: sales_ops_7 {
    type: string
    sql: ${TABLE}.SALES_OPS_7 ;;
  }

  dimension: sales_ops_8 {
    type: string
    sql: ${TABLE}.SALES_OPS_8 ;;
  }

  dimension: sales_ops_9 {
    type: string
    sql: ${TABLE}.SALES_OPS_9 ;;
  }

  dimension: sb_number_of_days {
    type: string
    sql: ${TABLE}.SB_NUMBER_OF_DAYS ;;
  }

  dimension: sb_price_sw {
    type: string
    sql: ${TABLE}.SB_PRICE_SW ;;
  }

  dimension: scratch_pad_items_sw {
    type: string
    sql: ${TABLE}.SCRATCH_PAD_ITEMS_SW ;;
  }

  dimension: sec_doc_code {
    type: string
    sql: ${TABLE}.SEC_DOC_CODE ;;
  }

  dimension: send_invoice_manual_sw {
    type: string
    sql: ${TABLE}.SEND_INVOICE_MANUAL_SW ;;
  }

  dimension: ship_complete_flag {
    type: string
    sql: ${TABLE}.SHIP_COMPLETE_FLAG ;;
  }

  dimension: si_acct_dist_sw {
    type: string
    sql: ${TABLE}.SI_ACCT_DIST_SW ;;
  }

  dimension: si_detail_sw {
    type: string
    sql: ${TABLE}.SI_DETAIL_SW ;;
  }

  dimension: si_summ_rec_sw {
    type: string
    sql: ${TABLE}.SI_SUMM_REC_SW ;;
  }

  dimension: sls_mgr_code {
    type: string
    sql: ${TABLE}.SLS_MGR_CODE ;;
  }

  dimension: smartvar_code {
    type: string
    sql: ${TABLE}.SMARTVAR_CODE ;;
  }

  dimension: smartvar_exp_date {
    type: number
    sql: ${TABLE}.SMARTVAR_EXP_DATE ;;
  }

  dimension: smartvar_free_calls {
    type: number
    sql: ${TABLE}.SMARTVAR_FREE_CALLS ;;
  }

  dimension: smartvar_total_calls {
    type: number
    sql: ${TABLE}.SMARTVAR_TOTAL_CALLS ;;
  }

  dimension: smb_flg {
    type: string
    sql: ${TABLE}.SMB_FLG ;;
  }

  dimension: sort_code {
    type: string
    sql: ${TABLE}.SORT_CODE ;;
  }

  dimension: split_billing_sw {
    type: string
    sql: ${TABLE}.SPLIT_BILLING_SW ;;
  }

  dimension: status_cust {
    type: string
    sql: ${TABLE}.STATUS_CUST ;;
  }

  dimension: stmt_print_code {
    type: string
    sql: ${TABLE}.STMT_PRINT_CODE ;;
  }

  dimension: stock_bal_pct {
    type: number
    sql: ${TABLE}.STOCK_BAL_PCT ;;
  }

  dimension: stock_balance_pct {
    type: number
    sql: ${TABLE}.STOCK_BALANCE_PCT ;;
  }

  dimension: summ_invoice_code {
    type: string
    sql: ${TABLE}.SUMM_INVOICE_CODE ;;
  }

  dimension: suppress_ingram_sku {
    type: string
    sql: ${TABLE}.SUPPRESS_INGRAM_SKU ;;
  }

  dimension: svc_charge_code {
    type: string
    sql: ${TABLE}.SVC_CHARGE_CODE ;;
  }

  dimension: svc_charge_pct {
    type: number
    sql: ${TABLE}.SVC_CHARGE_PCT ;;
  }

  dimension: t1_franchise {
    type: string
    sql: ${TABLE}.T1_FRANCHISE ;;
  }

  dimension: t1_ownership {
    type: string
    sql: ${TABLE}.T1_OWNERSHIP ;;
  }

  dimension: t2_bus_type {
    type: string
    sql: ${TABLE}.T2_BUS_TYPE ;;
  }

  dimension: t2_nbr_stores {
    type: string
    sql: ${TABLE}.T2_NBR_STORES ;;
  }

  dimension: t3_cpu_type {
    type: string
    sql: ${TABLE}.T3_CPU_TYPE ;;
  }

  dimension: t3_sales_vol {
    type: string
    sql: ${TABLE}.T3_SALES_VOL ;;
  }

  dimension: t4_staff_size {
    type: string
    sql: ${TABLE}.T4_STAFF_SIZE ;;
  }

  dimension: t4_tpd {
    type: string
    sql: ${TABLE}.T4_TPD ;;
  }

  dimension: tag_sb_purch_history {
    type: string
    sql: ${TABLE}.TAG_SB_PURCH_HISTORY ;;
  }

  dimension: te_number_of_days {
    type: string
    sql: ${TABLE}.TE_NUMBER_OF_DAYS ;;
  }

  dimension: tech_error_pct {
    type: number
    sql: ${TABLE}.TECH_ERROR_PCT ;;
  }

  dimension: tech_probation_flag {
    type: string
    sql: ${TABLE}.TECH_PROBATION_FLAG ;;
  }

  dimension: tech_pswd {
    type: string
    sql: ${TABLE}.TECH_PSWD ;;
  }

  dimension: tech_pswd_date {
    type: number
    sql: ${TABLE}.TECH_PSWD_DATE ;;
  }

  dimension: terms_charge_sw {
    type: string
    sql: ${TABLE}.TERMS_CHARGE_SW ;;
  }

  dimension: terms_chrg_amt_pct {
    type: number
    sql: ${TABLE}.TERMS_CHRG_AMT_PCT ;;
  }

  dimension: terms_chrg_days {
    type: number
    sql: ${TABLE}.TERMS_CHRG_DAYS ;;
  }

  dimension: times_over_limit {
    type: number
    sql: ${TABLE}.TIMES_OVER_LIMIT ;;
  }

  dimension: todays_cash {
    type: number
    sql: ${TABLE}.TODAYS_CASH ;;
  }

  dimension: transpose_rsler_im_sku {
    type: string
    sql: ${TABLE}.TRANSPOSE_RSLER_IM_SKU ;;
  }

  dimension: ts_package_calls {
    type: number
    sql: ${TABLE}.TS_PACKAGE_CALLS ;;
  }

  dimension: ts_package_exp_date {
    type: number
    sql: ${TABLE}.TS_PACKAGE_EXP_DATE ;;
  }

  dimension: u_rcd {
    type: string
    sql: ${TABLE}.U_RCD ;;
  }

  dimension: ups_aod_sw {
    type: string
    sql: ${TABLE}.UPS_AOD_SW ;;
  }

  dimension: use_alpha_ord_sw {
    type: string
    sql: ${TABLE}.USE_ALPHA_ORD_SW ;;
  }

  dimension: use_config_center {
    type: string
    sql: ${TABLE}.USE_CONFIG_CENTER ;;
  }

  dimension: vend_level_price_date {
    type: number
    sql: ${TABLE}.VEND_LEVEL_PRICE_DATE ;;
  }

  dimension: vendor_agp_pct_ovrd_sw {
    type: string
    sql: ${TABLE}.VENDOR_AGP_PCT_OVRD_SW ;;
  }

  dimension: vip_flag {
    type: string
    sql: ${TABLE}.VIP_FLAG ;;
  }

  dimension: vip_signup_date {
    type: number
    sql: ${TABLE}.VIP_SIGNUP_DATE ;;
  }

  dimension: waive_alt_frt_chrg {
    type: string
    sql: ${TABLE}.WAIVE_ALT_FRT_CHRG ;;
  }

  dimension: waive_alt_han_chrg {
    type: string
    sql: ${TABLE}.WAIVE_ALT_HAN_CHRG ;;
  }

  dimension: waive_min_ord_sw {
    type: string
    sql: ${TABLE}.WAIVE_MIN_ORD_SW ;;
  }

  dimension: web_days_delete {
    type: string
    sql: ${TABLE}.WEB_DAYS_DELETE ;;
  }

  dimension: web_days_delete_n {
    type: string
    sql: ${TABLE}.WEB_DAYS_DELETE_N ;;
  }

  dimension: wprc_mod_sw {
    type: string
    sql: ${TABLE}.WPRC_MOD_SW ;;
  }

  dimension: wrong_sale_pct {
    type: number
    sql: ${TABLE}.WRONG_SALE_PCT ;;
  }

  dimension: ws_number_of_days {
    type: string
    sql: ${TABLE}.WS_NUMBER_OF_DAYS ;;
  }

  dimension: ytd_disc_taken {
    type: number
    sql: ${TABLE}.YTD_DISC_TAKEN ;;
  }

  dimension: ytd_pay_amount {
    type: number
    sql: ${TABLE}.YTD_PAY_AMOUNT ;;
  }

  dimension: ytd_pay_nbr {
    type: number
    sql: ${TABLE}.YTD_PAY_NBR ;;
  }

  measure: count {
    type: count
    drill_fields: [name, open_pc_file_name]
  }
}
