# The name of this view in Looker is "Ims Cust Cushedof"
view: ims_cust_cushedof {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_CUST_CUSHEDOF`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acct Stmt Sup Flag" in Explore.

  dimension: acct_stmt_sup_flag {
    type: string
    sql: ${TABLE}.ACCT_STMT_SUP_FLAG ;;
  }

  dimension: apply_refusal_chg_sw {
    type: string
    sql: ${TABLE}.APPLY_REFUSAL_CHG_SW ;;
  }

  dimension: baseline_ccs {
    type: string
    sql: ${TABLE}.BASELINE_CCS ;;
  }

  dimension: baseline_employees {
    type: string
    sql: ${TABLE}.BASELINE_EMPLOYEES ;;
  }

  dimension: baseline_fss {
    type: string
    sql: ${TABLE}.BASELINE_FSS ;;
  }

  dimension: baseline_paydex {
    type: string
    sql: ${TABLE}.BASELINE_PAYDEX ;;
  }

  dimension: bbs_3_rd_party_info {
    type: string
    sql: ${TABLE}.BBS_3RD_PARTY_INFO ;;
  }

  dimension: blanket_rma_sw {
    type: string
    sql: ${TABLE}.BLANKET_RMA_SW ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: carrier_chg_exempt_ind {
    type: string
    sql: ${TABLE}.CARRIER_CHG_EXEMPT_IND ;;
  }

  dimension: choice_advtg_srv_lvl {
    type: string
    sql: ${TABLE}.CHOICE_ADVTG_SRV_LVL ;;
  }

  dimension: choice_advtg_srv_opt {
    type: string
    sql: ${TABLE}.CHOICE_ADVTG_SRV_OPT ;;
  }

  dimension: choice_advtg_upgrd {
    type: string
    sql: ${TABLE}.CHOICE_ADVTG_UPGRD ;;
  }

  dimension: comb_license_order_sw {
    type: string
    sql: ${TABLE}.COMB_LICENSE_ORDER_SW ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: contract_date {
    type: number
    sql: ${TABLE}.CONTRACT_DATE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_contract_date {
    type: sum
    sql: ${contract_date} ;;
  }

  measure: average_contract_date {
    type: average
    sql: ${contract_date} ;;
  }

  dimension: corp_credit_comment {
    type: string
    sql: ${TABLE}.CORP_CREDIT_COMMENT ;;
  }

  dimension: current_ccs {
    type: string
    sql: ${TABLE}.CURRENT_CCS ;;
  }

  dimension: current_employees {
    type: string
    sql: ${TABLE}.CURRENT_EMPLOYEES ;;
  }

  dimension: current_fss {
    type: string
    sql: ${TABLE}.CURRENT_FSS ;;
  }

  dimension: current_paydex {
    type: string
    sql: ${TABLE}.CURRENT_PAYDEX ;;
  }

  dimension: cushedof_key_0 {
    type: string
    sql: ${TABLE}.CUSHEDOF_KEY_0 ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: cust_ord_lowercase_sw {
    type: string
    sql: ${TABLE}.CUST_ORD_LOWERCASE_SW ;;
  }

  dimension: cust_po_br_nbr {
    type: string
    sql: ${TABLE}.CUST_PO_BR_NBR ;;
  }

  dimension: custvat_sw {
    type: string
    sql: ${TABLE}.CUSTVAT_SW ;;
  }

  dimension: daily_cash_coll1 {
    type: number
    sql: ${TABLE}.DAILY_CASH_COLL1 ;;
  }

  dimension: daily_cash_coll10 {
    type: number
    sql: ${TABLE}.DAILY_CASH_COLL10 ;;
  }

  dimension: daily_cash_coll11 {
    type: number
    sql: ${TABLE}.DAILY_CASH_COLL11 ;;
  }

  dimension: daily_cash_coll12 {
    type: number
    sql: ${TABLE}.DAILY_CASH_COLL12 ;;
  }

  dimension: daily_cash_coll2 {
    type: number
    sql: ${TABLE}.DAILY_CASH_COLL2 ;;
  }

  dimension: daily_cash_coll3 {
    type: number
    sql: ${TABLE}.DAILY_CASH_COLL3 ;;
  }

  dimension: daily_cash_coll4 {
    type: number
    sql: ${TABLE}.DAILY_CASH_COLL4 ;;
  }

  dimension: daily_cash_coll5 {
    type: number
    sql: ${TABLE}.DAILY_CASH_COLL5 ;;
  }

  dimension: daily_cash_coll6 {
    type: number
    sql: ${TABLE}.DAILY_CASH_COLL6 ;;
  }

  dimension: daily_cash_coll7 {
    type: number
    sql: ${TABLE}.DAILY_CASH_COLL7 ;;
  }

  dimension: daily_cash_coll8 {
    type: number
    sql: ${TABLE}.DAILY_CASH_COLL8 ;;
  }

  dimension: daily_cash_coll9 {
    type: number
    sql: ${TABLE}.DAILY_CASH_COLL9 ;;
  }

  dimension: ecom_byp_grp1 {
    type: string
    sql: ${TABLE}.ECOM_BYP_GRP1 ;;
  }

  dimension: ecom_promotional_ind {
    type: string
    sql: ${TABLE}.ECOM_PROMOTIONAL_IND ;;
  }

  dimension: edi_email_sw {
    type: string
    sql: ${TABLE}.EDI_EMAIL_SW ;;
  }

  dimension: esd_opt_out_sw {
    type: string
    sql: ${TABLE}.ESD_OPT_OUT_SW ;;
  }

  dimension: future_br_nbr {
    type: string
    sql: ${TABLE}.FUTURE_BR_NBR ;;
  }

  dimension: future_cust_nbr {
    type: string
    sql: ${TABLE}.FUTURE_CUST_NBR ;;
  }

  dimension: future_days {
    type: string
    sql: ${TABLE}.FUTURE_DAYS ;;
  }

  dimension: gm_err_bypass {
    type: string
    sql: ${TABLE}.GM_ERR_BYPASS ;;
  }

  dimension: gm_err_ord_typ {
    type: string
    sql: ${TABLE}.GM_ERR_ORD_TYP ;;
  }

  dimension: gov_customer_sw {
    type: string
    sql: ${TABLE}.GOV_CUSTOMER_SW ;;
  }

  dimension: il_allow_prc_var_sw {
    type: string
    sql: ${TABLE}.IL_ALLOW_PRC_VAR_SW ;;
  }

  dimension: invoice_presentment {
    type: string
    sql: ${TABLE}.INVOICE_PRESENTMENT ;;
  }

  dimension: license_email {
    type: string
    sql: ${TABLE}.LICENSE_EMAIL ;;
  }

  dimension: lump_sum_debit_ind {
    type: string
    sql: ${TABLE}.LUMP_SUM_DEBIT_IND ;;
  }

  dimension: mnord_by_oe_meth_ind {
    type: string
    sql: ${TABLE}.MNORD_BY_OE_METH_IND ;;
  }

  dimension: moody_pd_score {
    type: number
    sql: ${TABLE}.MOODY_PD_SCORE ;;
  }

  dimension: multi_br_seq_sw {
    type: string
    sql: ${TABLE}.MULTI_BR_SEQ_SW ;;
  }

  dimension: non_std_frt_limit_amt {
    type: number
    sql: ${TABLE}.NON_STD_FRT_LIMIT_AMT ;;
  }

  dimension: non_std_frt_xmpt_flg {
    type: string
    sql: ${TABLE}.NON_STD_FRT_XMPT_FLG ;;
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

  dimension: ord_billed_today {
    type: number
    sql: ${TABLE}.ORD_BILLED_TODAY ;;
  }

  dimension: pan_euro_customer_sw {
    type: string
    sql: ${TABLE}.PAN_EURO_CUSTOMER_SW ;;
  }

  dimension: pdc_alloc_by_cust_sw {
    type: string
    sql: ${TABLE}.PDC_ALLOC_BY_CUST_SW ;;
  }

  dimension: pdc_blank_check_count {
    type: number
    sql: ${TABLE}.PDC_BLANK_CHECK_COUNT ;;
  }

  dimension: pdc_channel_finance_sw {
    type: string
    sql: ${TABLE}.PDC_CHANNEL_FINANCE_SW ;;
  }

  dimension: pdc_channel_limit_amt {
    type: number
    sql: ${TABLE}.PDC_CHANNEL_LIMIT_AMT ;;
  }

  dimension: pdc_credit_stop_nsf_sw {
    type: string
    sql: ${TABLE}.PDC_CREDIT_STOP_NSF_SW ;;
  }

  dimension: pdc_issue_bank_id {
    type: string
    sql: ${TABLE}.PDC_ISSUE_BANK_ID ;;
  }

  dimension: pdc_issue_bank_loc_id {
    type: string
    sql: ${TABLE}.PDC_ISSUE_BANK_LOC_ID ;;
  }

  dimension: pdc_issue_bnk_loc_id {
    type: string
    sql: ${TABLE}.PDC_ISSUE_BNK_LOC_ID ;;
  }

  dimension: pdc_min_check_count {
    type: number
    sql: ${TABLE}.PDC_MIN_CHECK_COUNT ;;
  }

  dimension: pdc_pay_type_sw {
    type: string
    sql: ${TABLE}.PDC_PAY_TYPE_SW ;;
  }

  dimension: pdc_security_check_count {
    type: number
    sql: ${TABLE}.PDC_SECURITY_CHECK_COUNT ;;
  }

  dimension: pos_eu_info_req_ind {
    type: string
    sql: ${TABLE}.POS_EU_INFO_REQ_IND ;;
  }

  dimension: postal_cd_bypass_sw {
    type: string
    sql: ${TABLE}.POSTAL_CD_BYPASS_SW ;;
  }

  dimension: pricing_engine_sw {
    type: string
    sql: ${TABLE}.PRICING_ENGINE_SW ;;
  }

  dimension: prod_sls_mngt_ad_excl_ind {
    type: string
    sql: ${TABLE}.PROD_SLS_MNGT_AD_EXCL_IND ;;
  }

  dimension: prod_sls_mngt_re_excl_ind {
    type: string
    sql: ${TABLE}.PROD_SLS_MNGT_RE_EXCL_IND ;;
  }

  dimension: pxtyp_sw {
    type: string
    sql: ${TABLE}.PXTYP_SW ;;
  }

  dimension: quote_nbr_req {
    type: string
    sql: ${TABLE}.QUOTE_NBR_REQ ;;
  }

  dimension: ri_br_nbr {
    type: string
    sql: ${TABLE}.RI_BR_NBR ;;
  }

  dimension: ri_cust_nbr {
    type: string
    sql: ${TABLE}.RI_CUST_NBR ;;
  }

  dimension: ri_tofrom_flag {
    type: string
    sql: ${TABLE}.RI_TOFROM_FLAG ;;
  }

  dimension: ri_visible_allowed_sw {
    type: string
    sql: ${TABLE}.RI_VISIBLE_ALLOWED_SW ;;
  }

  dimension: ri_visible_exists_sw {
    type: string
    sql: ${TABLE}.RI_VISIBLE_EXISTS_SW ;;
  }

  dimension: rma_billed_today {
    type: number
    sql: ${TABLE}.RMA_BILLED_TODAY ;;
  }

  dimension: rma_no_purchase_sw {
    type: string
    sql: ${TABLE}.RMA_NO_PURCHASE_SW ;;
  }

  dimension: rma_sb_fee_sw {
    type: string
    sql: ${TABLE}.RMA_SB_FEE_SW ;;
  }

  dimension: rslr_eu_addr_nbr {
    type: number
    sql: ${TABLE}.RSLR_EU_ADDR_NBR ;;
  }

  dimension: rslr_eu_ctac_id {
    type: number
    sql: ${TABLE}.RSLR_EU_CTAC_ID ;;
  }

  dimension: rslr_eu_id {
    type: number
    sql: ${TABLE}.RSLR_EU_ID ;;
  }

  dimension: rtv_capture_code_ind {
    type: string
    sql: ${TABLE}.RTV_CAPTURE_CODE_IND ;;
  }

  dimension: sc_number_of_days {
    type: string
    sql: ${TABLE}.SC_NUMBER_OF_DAYS ;;
  }

  dimension: sc_pct {
    type: number
    sql: ${TABLE}.SC_PCT ;;
  }

  dimension: service_sku {
    type: string
    sql: ${TABLE}.SERVICE_SKU ;;
  }

  dimension: stmt_period_ending {
    type: number
    sql: ${TABLE}.STMT_PERIOD_ENDING ;;
  }

  dimension: tech_sup_thrshld_ind {
    type: string
    sql: ${TABLE}.TECH_SUP_THRSHLD_IND ;;
  }

  dimension: temp_active_date {
    type: number
    sql: ${TABLE}.TEMP_ACTIVE_DATE ;;
  }

  dimension: th_br_id {
    type: string
    sql: ${TABLE}.TH_BR_ID ;;
  }

  dimension: third_party_pal_sw {
    type: string
    sql: ${TABLE}.THIRD_PARTY_PAL_SW ;;
  }

  dimension: trans_group_code_ind {
    type: string
    sql: ${TABLE}.TRANS_GROUP_CODE_IND ;;
  }

  dimension: waive_frt_rec_chrg_sw {
    type: string
    sql: ${TABLE}.WAIVE_FRT_REC_CHRG_SW ;;
  }

  dimension: xmpt_last_change {
    type: number
    sql: ${TABLE}.XMPT_LAST_CHANGE ;;
  }

  dimension: xmpt_opid {
    type: string
    sql: ${TABLE}.XMPT_OPID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
