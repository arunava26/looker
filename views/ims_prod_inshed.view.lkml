# The name of this view in Looker is "Ims Prod Inshed"
view: ims_prod_inshed {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_INSHED`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acop Cost Override Ind" in Explore.

  dimension: acop_cost_override_ind {
    type: string
    sql: ${TABLE}.ACOP_COST_OVERRIDE_IND ;;
  }

  dimension: adjusted_cost {
    type: number
    sql: ${TABLE}.ADJUSTED_COST ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_adjusted_cost {
    type: sum
    sql: ${adjusted_cost} ;;
  }

  measure: average_adjusted_cost {
    type: average
    sql: ${adjusted_cost} ;;
  }

  dimension: adjusted_cost_flag {
    type: string
    sql: ${TABLE}.ADJUSTED_COST_FLAG ;;
  }

  dimension: alliance_sw {
    type: string
    sql: ${TABLE}.ALLIANCE_SW ;;
  }

  dimension: asset_tag_flag {
    type: string
    sql: ${TABLE}.ASSET_TAG_FLAG ;;
  }

  dimension: associated_single_item_sku {
    type: string
    sql: ${TABLE}.ASSOCIATED_SINGLE_ITEM_SKU ;;
  }

  dimension: auto_mchg_line_code {
    type: string
    sql: ${TABLE}.AUTO_MCHG_LINE_CODE ;;
  }

  dimension: auto_reserve_sw {
    type: string
    sql: ${TABLE}.AUTO_RESERVE_SW ;;
  }

  dimension: avg_cost {
    type: number
    sql: ${TABLE}.AVG_COST ;;
  }

  dimension: backorder_sw {
    type: string
    sql: ${TABLE}.BACKORDER_SW ;;
  }

  dimension: base_price {
    type: number
    sql: ${TABLE}.BASE_PRICE ;;
  }

  dimension: base_unit {
    type: string
    sql: ${TABLE}.BASE_UNIT ;;
  }

  dimension: btl2_disc_pct {
    type: number
    sql: ${TABLE}.BTL2_DISC_PCT ;;
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

  dimension: cascading_part_nbr {
    type: string
    sql: ${TABLE}.CASCADING_PART_NBR ;;
  }

  dimension: casepack_return_sw {
    type: string
    sql: ${TABLE}.CASEPACK_RETURN_SW ;;
  }

  dimension: catalog_nbr {
    type: string
    sql: ${TABLE}.CATALOG_NBR ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.CATEGORY ;;
  }

  dimension: category_sub {
    type: string
    sql: ${TABLE}.CATEGORY_SUB ;;
  }

  dimension: charge_freight_flag {
    type: string
    sql: ${TABLE}.CHARGE_FREIGHT_FLAG ;;
  }

  dimension: class {
    type: string
    sql: ${TABLE}.CLASS ;;
  }

  dimension: cntry_of_origin {
    type: string
    sql: ${TABLE}.CNTRY_OF_ORIGIN ;;
  }

  dimension: column_1_mult {
    type: number
    sql: ${TABLE}.COLUMN_1_MULT ;;
  }

  dimension: column_2_mult {
    type: number
    sql: ${TABLE}.COLUMN_2_MULT ;;
  }

  dimension: column_3_mult {
    type: number
    sql: ${TABLE}.COLUMN_3_MULT ;;
  }

  dimension: commod_code {
    type: string
    sql: ${TABLE}.COMMOD_CODE ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: component_business_sw {
    type: string
    sql: ${TABLE}.COMPONENT_BUSINESS_SW ;;
  }

  dimension: config_only_yn {
    type: string
    sql: ${TABLE}.CONFIG_ONLY_YN ;;
  }

  dimension: conv_base_price {
    type: number
    sql: ${TABLE}.CONV_BASE_PRICE ;;
  }

  dimension: conv_curr_calc_code {
    type: string
    sql: ${TABLE}.CONV_CURR_CALC_CODE ;;
  }

  dimension: conv_curr_table_code {
    type: string
    sql: ${TABLE}.CONV_CURR_TABLE_CODE ;;
  }

  dimension: conv_duty_table_code {
    type: string
    sql: ${TABLE}.CONV_DUTY_TABLE_CODE ;;
  }

  dimension: conv_misc_cost {
    type: number
    sql: ${TABLE}.CONV_MISC_COST ;;
  }

  dimension: conv_tax_table_code {
    type: string
    sql: ${TABLE}.CONV_TAX_TABLE_CODE ;;
  }

  dimension: coop_admn_pct {
    type: number
    sql: ${TABLE}.COOP_ADMN_PCT ;;
  }

  dimension: coop_end_date {
    type: number
    sql: ${TABLE}.COOP_END_DATE ;;
  }

  dimension: coop_flag {
    type: string
    sql: ${TABLE}.COOP_FLAG ;;
  }

  dimension: coop_fund_pct {
    type: number
    sql: ${TABLE}.COOP_FUND_PCT ;;
  }

  dimension: coop_start_date {
    type: number
    sql: ${TABLE}.COOP_START_DATE ;;
  }

  dimension: cost_basis_override {
    type: string
    sql: ${TABLE}.COST_BASIS_OVERRIDE ;;
  }

  dimension: cost_mult {
    type: number
    sql: ${TABLE}.COST_MULT ;;
  }

  dimension: cost_promotion_sw {
    type: string
    sql: ${TABLE}.COST_PROMOTION_SW ;;
  }

  dimension: cp_coop_pct {
    type: number
    sql: ${TABLE}.CP_COOP_PCT ;;
  }

  dimension: date_chg_ac {
    type: number
    sql: ${TABLE}.DATE_CHG_AC ;;
  }

  dimension: dealer_margin {
    type: number
    sql: ${TABLE}.DEALER_MARGIN ;;
  }

  dimension: dealer_override_sw {
    type: string
    sql: ${TABLE}.DEALER_OVERRIDE_SW ;;
  }

  dimension: dealer_price {
    type: number
    sql: ${TABLE}.DEALER_PRICE ;;
  }

  dimension: delivery_charges {
    type: number
    sql: ${TABLE}.DELIVERY_CHARGES ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: discount_pct {
    type: number
    sql: ${TABLE}.DISCOUNT_PCT ;;
  }

  dimension: discount_sw {
    type: string
    sql: ${TABLE}.DISCOUNT_SW ;;
  }

  dimension: drp_item_sw {
    type: string
    sql: ${TABLE}.DRP_ITEM_SW ;;
  }

  dimension: eccn_code {
    type: string
    sql: ${TABLE}.ECCN_CODE ;;
  }

  dimension: eccn_code_opid {
    type: string
    sql: ${TABLE}.ECCN_CODE_OPID ;;
  }

  dimension: eff_date {
    type: number
    sql: ${TABLE}.EFF_DATE ;;
  }

  dimension: eff_date_ac {
    type: number
    sql: ${TABLE}.EFF_DATE_AC ;;
  }

  dimension: enc_eligible {
    type: string
    sql: ${TABLE}.ENC_ELIGIBLE ;;
  }

  dimension: enc_update_date {
    type: number
    sql: ${TABLE}.ENC_UPDATE_DATE ;;
  }

  dimension: encryption_bit_level {
    type: string
    sql: ${TABLE}.ENCRYPTION_BIT_LEVEL ;;
  }

  dimension: encryption_flag {
    type: string
    sql: ${TABLE}.ENCRYPTION_FLAG ;;
  }

  dimension: exclude_acop_ind {
    type: string
    sql: ${TABLE}.EXCLUDE_ACOP_IND ;;
  }

  dimension: exclusive_sw {
    type: string
    sql: ${TABLE}.EXCLUSIVE_SW ;;
  }

  dimension: exp_date_ac {
    type: number
    sql: ${TABLE}.EXP_DATE_AC ;;
  }

  dimension: export_approval_sw {
    type: string
    sql: ${TABLE}.EXPORT_APPROVAL_SW ;;
  }

  dimension: export_licence {
    type: string
    sql: ${TABLE}.EXPORT_LICENCE ;;
  }

  dimension: extra_desc_sw {
    type: string
    sql: ${TABLE}.EXTRA_DESC_SW ;;
  }

  dimension: fax_flag {
    type: string
    sql: ${TABLE}.FAX_FLAG ;;
  }

  dimension: fcc_flag {
    type: string
    sql: ${TABLE}.FCC_FLAG ;;
  }

  dimension: fda_flag {
    type: string
    sql: ${TABLE}.FDA_FLAG ;;
  }

  dimension: fiscal_class {
    type: string
    sql: ${TABLE}.FISCAL_CLASS ;;
  }

  dimension: frt_mult {
    type: number
    sql: ${TABLE}.FRT_MULT ;;
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

  dimension: full_cost_part_nbr {
    type: string
    sql: ${TABLE}.FULL_COST_PART_NBR ;;
  }

  dimension: fut_eff_date {
    type: number
    sql: ${TABLE}.FUT_EFF_DATE ;;
  }

  dimension: gp_override_flag {
    type: string
    sql: ${TABLE}.GP_OVERRIDE_FLAG ;;
  }

  dimension: harmonized_code {
    type: string
    sql: ${TABLE}.HARMONIZED_CODE ;;
  }

  dimension: harmonized_code_opid {
    type: string
    sql: ${TABLE}.HARMONIZED_CODE_OPID ;;
  }

  dimension: hts_approval_flag {
    type: string
    sql: ${TABLE}.HTS_APPROVAL_FLAG ;;
  }

  dimension: im_iarc_part_nbr {
    type: string
    sql: ${TABLE}.IM_IARC_PART_NBR ;;
  }

  dimension: ingram_cost {
    type: number
    sql: ${TABLE}.INGRAM_COST ;;
  }

  dimension: ingram_cost_override_sw {
    type: string
    sql: ${TABLE}.INGRAM_COST_OVERRIDE_SW ;;
  }

  dimension: international_sw {
    type: string
    sql: ${TABLE}.INTERNATIONAL_SW ;;
  }

  dimension: inv_part_nbr {
    type: string
    sql: ${TABLE}.INV_PART_NBR ;;
  }

  dimension: item_consigned_sw {
    type: string
    sql: ${TABLE}.ITEM_CONSIGNED_SW ;;
  }

  dimension: item_taxable_table_code {
    type: string
    sql: ${TABLE}.ITEM_TAXABLE_TABLE_CODE ;;
  }

  dimension: item_type {
    type: string
    sql: ${TABLE}.ITEM_TYPE ;;
  }

  dimension: item_type_invisible {
    type: string
    sql: ${TABLE}.ITEM_TYPE_INVISIBLE ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}.KEYWORD ;;
  }

  dimension: landed_cost {
    type: number
    sql: ${TABLE}.LANDED_COST ;;
  }

  dimension: landed_cost_override_sw {
    type: string
    sql: ${TABLE}.LANDED_COST_OVERRIDE_SW ;;
  }

  dimension: manufacturing_sku_sw {
    type: string
    sql: ${TABLE}.MANUFACTURING_SKU_SW ;;
  }

  dimension: mchg_code {
    type: string
    sql: ${TABLE}.MCHG_CODE ;;
  }

  dimension: media {
    type: string
    sql: ${TABLE}.MEDIA ;;
  }

  dimension: min_margin {
    type: number
    sql: ${TABLE}.MIN_MARGIN ;;
  }

  dimension: mult_br_auto_alloc_sw {
    type: string
    sql: ${TABLE}.MULT_BR_AUTO_ALLOC_SW ;;
  }

  dimension: multipack_qty {
    type: number
    sql: ${TABLE}.MULTIPACK_QTY ;;
  }

  dimension: multipack_type {
    type: string
    sql: ${TABLE}.MULTIPACK_TYPE ;;
  }

  dimension: nafta {
    type: string
    sql: ${TABLE}.NAFTA ;;
  }

  dimension: nafta_exp_date {
    type: number
    sql: ${TABLE}.NAFTA_EXP_DATE ;;
  }

  dimension: new_po_cost {
    type: number
    sql: ${TABLE}.NEW_PO_COST ;;
  }

  dimension: nom_exp_date {
    type: number
    sql: ${TABLE}.NOM_EXP_DATE ;;
  }

  dimension: nom_nbr {
    type: string
    sql: ${TABLE}.NOM_NBR ;;
  }

  dimension: non_std_conv_sw {
    type: string
    sql: ${TABLE}.NON_STD_CONV_SW ;;
  }

  dimension: note_sw {
    type: string
    sql: ${TABLE}.NOTE_SW ;;
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

  dimension: old_cost_basis_override {
    type: string
    sql: ${TABLE}.OLD_COST_BASIS_OVERRIDE ;;
  }

  dimension: order_adjusted_cost_sw {
    type: string
    sql: ${TABLE}.ORDER_ADJUSTED_COST_SW ;;
  }

  dimension: oversize_indicator {
    type: string
    sql: ${TABLE}.OVERSIZE_INDICATOR ;;
  }

  dimension: pick_casepack_qty {
    type: number
    sql: ${TABLE}.PICK_CASEPACK_QTY ;;
  }

  dimension: pick_casepack_sw {
    type: string
    sql: ${TABLE}.PICK_CASEPACK_SW ;;
  }

  dimension: po_cost {
    type: number
    sql: ${TABLE}.PO_COST ;;
  }

  dimension: pos_eu_info_req_ind {
    type: string
    sql: ${TABLE}.POS_EU_INFO_REQ_IND ;;
  }

  dimension: price_indicator {
    type: string
    sql: ${TABLE}.PRICE_INDICATOR ;;
  }

  dimension: price_qty_1 {
    type: number
    sql: ${TABLE}.PRICE_QTY_1 ;;
  }

  dimension: price_qty_2 {
    type: number
    sql: ${TABLE}.PRICE_QTY_2 ;;
  }

  dimension: pricing_flag {
    type: string
    sql: ${TABLE}.PRICING_FLAG ;;
  }

  dimension: promo_sku_status {
    type: string
    sql: ${TABLE}.PROMO_SKU_STATUS ;;
  }

  dimension: promote_item_sw {
    type: string
    sql: ${TABLE}.PROMOTE_ITEM_SW ;;
  }

  dimension: quantity_break_sw {
    type: string
    sql: ${TABLE}.QUANTITY_BREAK_SW ;;
  }

  dimension: rebox_sw {
    type: string
    sql: ${TABLE}.REBOX_SW ;;
  }

  dimension: refer_direct_sw {
    type: string
    sql: ${TABLE}.REFER_DIRECT_SW ;;
  }

  dimension: rental_rate {
    type: number
    sql: ${TABLE}.RENTAL_RATE ;;
  }

  dimension: replacement_cost {
    type: number
    sql: ${TABLE}.REPLACEMENT_COST ;;
  }

  dimension: restricted_sw {
    type: string
    sql: ${TABLE}.RESTRICTED_SW ;;
  }

  dimension: retail_percent {
    type: number
    sql: ${TABLE}.RETAIL_PERCENT ;;
  }

  dimension: retail_percent_loc {
    type: string
    sql: ${TABLE}.RETAIL_PERCENT_LOC ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.RETAIL_PRICE ;;
  }

  dimension: roll_sw {
    type: string
    sql: ${TABLE}.ROLL_SW ;;
  }

  dimension: rsv_account_1 {
    type: string
    sql: ${TABLE}.RSV_ACCOUNT_1 ;;
  }

  dimension: rsv_account_2 {
    type: string
    sql: ${TABLE}.RSV_ACCOUNT_2 ;;
  }

  dimension: rsv_account_3 {
    type: string
    sql: ${TABLE}.RSV_ACCOUNT_3 ;;
  }

  dimension: rsv_br_1 {
    type: string
    sql: ${TABLE}.RSV_BR_1 ;;
  }

  dimension: rsv_br_2 {
    type: string
    sql: ${TABLE}.RSV_BR_2 ;;
  }

  dimension: rsv_br_3 {
    type: string
    sql: ${TABLE}.RSV_BR_3 ;;
  }

  dimension: rsv_chg_date_1 {
    type: number
    sql: ${TABLE}.RSV_CHG_DATE_1 ;;
  }

  dimension: rsv_chg_date_2 {
    type: number
    sql: ${TABLE}.RSV_CHG_DATE_2 ;;
  }

  dimension: rsv_chg_date_3 {
    type: number
    sql: ${TABLE}.RSV_CHG_DATE_3 ;;
  }

  dimension: rsv_create_date {
    type: number
    sql: ${TABLE}.RSV_CREATE_DATE ;;
  }

  dimension: rsv_exp_date_1 {
    type: number
    sql: ${TABLE}.RSV_EXP_DATE_1 ;;
  }

  dimension: rsv_exp_date_2 {
    type: number
    sql: ${TABLE}.RSV_EXP_DATE_2 ;;
  }

  dimension: rsv_exp_date_3 {
    type: number
    sql: ${TABLE}.RSV_EXP_DATE_3 ;;
  }

  dimension: rsv_opid_1 {
    type: string
    sql: ${TABLE}.RSV_OPID_1 ;;
  }

  dimension: rsv_opid_2 {
    type: string
    sql: ${TABLE}.RSV_OPID_2 ;;
  }

  dimension: rsv_opid_3 {
    type: string
    sql: ${TABLE}.RSV_OPID_3 ;;
  }

  dimension: rsv_percent_1 {
    type: number
    sql: ${TABLE}.RSV_PERCENT_1 ;;
  }

  dimension: rsv_percent_2 {
    type: number
    sql: ${TABLE}.RSV_PERCENT_2 ;;
  }

  dimension: rsv_percent_3 {
    type: number
    sql: ${TABLE}.RSV_PERCENT_3 ;;
  }

  dimension: rsv_priority_1 {
    type: string
    sql: ${TABLE}.RSV_PRIORITY_1 ;;
  }

  dimension: rsv_priority_2 {
    type: string
    sql: ${TABLE}.RSV_PRIORITY_2 ;;
  }

  dimension: rsv_priority_3 {
    type: string
    sql: ${TABLE}.RSV_PRIORITY_3 ;;
  }

  dimension: sale_qty_multiple {
    type: number
    sql: ${TABLE}.SALE_QTY_MULTIPLE ;;
  }

  dimension: schedule_b_code {
    type: string
    sql: ${TABLE}.SCHEDULE_B_CODE ;;
  }

  dimension: semi_conductor_sw {
    type: string
    sql: ${TABLE}.SEMI_CONDUCTOR_SW ;;
  }

  dimension: seq_nbr {
    type: number
    sql: ${TABLE}.SEQ_NBR ;;
  }

  dimension: ship_carton_flag {
    type: string
    sql: ${TABLE}.SHIP_CARTON_FLAG ;;
  }

  dimension: shipment_ind {
    type: string
    sql: ${TABLE}.SHIPMENT_IND ;;
  }

  dimension: sit_trib_code {
    type: string
    sql: ${TABLE}.SIT_TRIB_CODE ;;
  }

  dimension: sku_specific_btl_ind {
    type: number
    sql: ${TABLE}.SKU_SPECIFIC_BTL_IND ;;
  }

  dimension: sku_type {
    type: string
    sql: ${TABLE}.SKU_TYPE ;;
  }

  dimension: soq_set_sw {
    type: string
    sql: ${TABLE}.SOQ_SET_SW ;;
  }

  dimension: special_systems_ind {
    type: string
    sql: ${TABLE}.SPECIAL_SYSTEMS_IND ;;
  }

  dimension: spiff_sw {
    type: string
    sql: ${TABLE}.SPIFF_SW ;;
  }

  dimension: status_inv_item {
    type: string
    sql: ${TABLE}.STATUS_INV_ITEM ;;
  }

  dimension: sub_cat {
    type: string
    sql: ${TABLE}.SUB_CAT ;;
  }

  dimension: substitute_part {
    type: string
    sql: ${TABLE}.SUBSTITUTE_PART ;;
  }

  dimension: substitute_part_old {
    type: string
    sql: ${TABLE}.SUBSTITUTE_PART_OLD ;;
  }

  dimension: substitute_reason_code {
    type: string
    sql: ${TABLE}.SUBSTITUTE_REASON_CODE ;;
  }

  dimension: substitute_rule {
    type: string
    sql: ${TABLE}.SUBSTITUTE_RULE ;;
  }

  dimension: taxable_item_sw {
    type: string
    sql: ${TABLE}.TAXABLE_ITEM_SW ;;
  }

  dimension: temp_price {
    type: number
    sql: ${TABLE}.TEMP_PRICE ;;
  }

  dimension: tes_code_rec {
    type: string
    sql: ${TABLE}.TES_CODE_REC ;;
  }

  dimension: tes_code_sales {
    type: string
    sql: ${TABLE}.TES_CODE_SALES ;;
  }

  dimension: test_sw {
    type: string
    sql: ${TABLE}.TEST_SW ;;
  }

  dimension: total_vendor_risk {
    type: number
    sql: ${TABLE}.TOTAL_VENDOR_RISK ;;
  }

  dimension: um {
    type: string
    sql: ${TABLE}.UM ;;
  }

  dimension: ups_item_sw {
    type: string
    sql: ${TABLE}.UPS_ITEM_SW ;;
  }

  dimension: use_fcst_sw {
    type: string
    sql: ${TABLE}.USE_FCST_SW ;;
  }

  dimension: vat_tax_code {
    type: string
    sql: ${TABLE}.VAT_TAX_CODE ;;
  }

  dimension: velocity_code {
    type: string
    sql: ${TABLE}.VELOCITY_CODE ;;
  }

  dimension: velocity_sw {
    type: string
    sql: ${TABLE}.VELOCITY_SW ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  dimension: vendor_part_nbr {
    type: string
    sql: ${TABLE}.VENDOR_PART_NBR ;;
  }

  dimension: warranty_repair_flag {
    type: string
    sql: ${TABLE}.WARRANTY_REPAIR_FLAG ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.WEIGHT ;;
  }

  dimension: weight_per {
    type: string
    sql: ${TABLE}.WEIGHT_PER ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
