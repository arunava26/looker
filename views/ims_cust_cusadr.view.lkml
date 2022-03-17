# The name of this view in Looker is "Ims Cust Cusadr"
view: ims_cust_cusadr {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_CUST_CUSADR`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Add1" in Explore.

  dimension: add1 {
    type: string
    sql: ${TABLE}.ADD1 ;;
  }

  dimension: add2 {
    type: string
    sql: ${TABLE}.ADD2 ;;
  }

  dimension: add3 {
    type: string
    sql: ${TABLE}.ADD3 ;;
  }

  dimension: add5 {
    type: string
    sql: ${TABLE}.ADD5 ;;
  }

  dimension: add6 {
    type: string
    sql: ${TABLE}.ADD6 ;;
  }

  dimension: addr_count {
    type: string
    sql: ${TABLE}.ADDR_COUNT ;;
  }

  dimension: addr_loc_sw {
    type: string
    sql: ${TABLE}.ADDR_LOC_SW ;;
  }

  dimension: addr_status {
    type: string
    sql: ${TABLE}.ADDR_STATUS ;;
  }

  dimension: address_1 {
    type: string
    sql: ${TABLE}.ADDRESS_1 ;;
  }

  dimension: address_2 {
    type: string
    sql: ${TABLE}.ADDRESS_2 ;;
  }

  dimension: address_3 {
    type: string
    sql: ${TABLE}.ADDRESS_3 ;;
  }

  dimension: address_4 {
    type: string
    sql: ${TABLE}.ADDRESS_4 ;;
  }

  dimension: address_5 {
    type: string
    sql: ${TABLE}.ADDRESS_5 ;;
  }

  dimension: address_6 {
    type: string
    sql: ${TABLE}.ADDRESS_6 ;;
  }

  dimension: alt_def_car {
    type: string
    sql: ${TABLE}.ALT_DEF_CAR ;;
  }

  dimension: box_size_flag {
    type: string
    sql: ${TABLE}.BOX_SIZE_FLAG ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: canada_post_sw {
    type: string
    sql: ${TABLE}.CANADA_POST_SW ;;
  }

  dimension: caps_id_code {
    type: string
    sql: ${TABLE}.CAPS_ID_CODE ;;
  }

  dimension: cartonize_exempt_sw {
    type: string
    sql: ${TABLE}.CARTONIZE_EXEMPT_SW ;;
  }

  dimension: cc_choice_allowed_cd {
    type: string
    sql: ${TABLE}.CC_CHOICE_ALLOWED_CD ;;
  }

  dimension: city_code {
    type: string
    sql: ${TABLE}.CITY_CODE ;;
  }

  dimension: city_l {
    type: string
    sql: ${TABLE}.CITY_L ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: compaq_coop_sw {
    type: string
    sql: ${TABLE}.COMPAQ_COOP_SW ;;
  }

  dimension: consignment_loc_ind {
    type: string
    sql: ${TABLE}.CONSIGNMENT_LOC_IND ;;
  }

  dimension: contact {
    type: string
    sql: ${TABLE}.CONTACT ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.COUNTRY_CODE ;;
  }

  dimension: county_code {
    type: string
    sql: ${TABLE}.COUNTY_CODE ;;
  }

  dimension: cpy_carrier_2_backorder_sw {
    type: string
    sql: ${TABLE}.CPY_CARRIER_2_BACKORDER_SW ;;
  }

  dimension: cst_tax_form {
    type: string
    sql: ${TABLE}.CST_TAX_FORM ;;
  }

  dimension: cu_3_rdp_c_ord_limit {
    type: number
    sql: ${TABLE}.CU_3RDP_C_ORD_LIMIT ;;
  }

  dimension: cu_3_rdp_c_ord_limit_x {
    type: string
    sql: ${TABLE}.CU_3RDP_C_ORD_LIMIT_X ;;
  }

  dimension: cu_3_rdp_c_price_id {
    type: string
    sql: ${TABLE}.CU_3RDP_C_PRICE_ID ;;
  }

  dimension: cu_3_rdp_c_waive_cd {
    type: string
    sql: ${TABLE}.CU_3RDP_C_WAIVE_CD ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: cust_rating_group_code {
    type: string
    sql: ${TABLE}.CUST_RATING_GROUP_CODE ;;
  }

  dimension: def_carrier {
    type: string
    sql: ${TABLE}.DEF_CARRIER ;;
  }

  dimension: def_out_frt_code {
    type: string
    sql: ${TABLE}.DEF_OUT_FRT_CODE ;;
  }

  dimension: def_ship_bill_to {
    type: string
    sql: ${TABLE}.DEF_SHIP_BILL_TO ;;
  }

  dimension: default_carrier_code_sw {
    type: string
    sql: ${TABLE}.DEFAULT_CARRIER_CODE_SW ;;
  }

  dimension: delivery_route {
    type: string
    sql: ${TABLE}.DELIVERY_ROUTE ;;
  }

  dimension: delivery_terms {
    type: string
    sql: ${TABLE}.DELIVERY_TERMS ;;
  }

  dimension: dflt_config_ship_fr_br {
    type: string
    sql: ${TABLE}.DFLT_CONFIG_SHIP_FR_BR ;;
  }

  dimension: direct_frt_sw {
    type: string
    sql: ${TABLE}.DIRECT_FRT_SW ;;
  }

  dimension: enter_cod_amt_sw {
    type: string
    sql: ${TABLE}.ENTER_COD_AMT_SW ;;
  }

  dimension: floor_alli_br_nbr {
    type: string
    sql: ${TABLE}.FLOOR_ALLI_BR_NBR ;;
  }

  dimension: floor_alli_cust_nbr {
    type: string
    sql: ${TABLE}.FLOOR_ALLI_CUST_NBR ;;
  }

  dimension: floor_alli_terms {
    type: number
    sql: ${TABLE}.FLOOR_ALLI_TERMS ;;
  }

  dimension: floor_br_nbr {
    type: string
    sql: ${TABLE}.FLOOR_BR_NBR ;;
  }

  dimension: floor_cust_nbr {
    type: string
    sql: ${TABLE}.FLOOR_CUST_NBR ;;
  }

  dimension: floor_terms {
    type: number
    sql: ${TABLE}.FLOOR_TERMS ;;
  }

  dimension: frt_markup {
    type: string
    sql: ${TABLE}.FRT_MARKUP ;;
  }

  dimension: frt_on_bo {
    type: string
    sql: ${TABLE}.FRT_ON_BO ;;
  }

  dimension: geo_code_city {
    type: string
    sql: ${TABLE}.GEO_CODE_CITY ;;
  }

  dimension: geo_code_county {
    type: string
    sql: ${TABLE}.GEO_CODE_COUNTY ;;
  }

  dimension: geo_code_state {
    type: string
    sql: ${TABLE}.GEO_CODE_STATE ;;
  }

  dimension: grp1_usps_override_sw {
    type: string
    sql: ${TABLE}.GRP1_USPS_OVERRIDE_SW ;;
  }

  dimension: int_address_flag {
    type: string
    sql: ${TABLE}.INT_ADDRESS_FLAG ;;
  }

  dimension: int_address_lines {
    type: string
    sql: ${TABLE}.INT_ADDRESS_LINES ;;
  }

  dimension: inv_print_ind {
    type: string
    sql: ${TABLE}.INV_PRINT_IND ;;
  }

  dimension: last_grp1_date {
    type: number
    sql: ${TABLE}.LAST_GRP1_DATE ;;
  }

  dimension: last_tax_ltr_date {
    type: number
    sql: ${TABLE}.LAST_TAX_LTR_DATE ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.LENGTH ;;
  }

  dimension: nbr_employees {
    type: number
    sql: ${TABLE}.NBR_EMPLOYEES ;;
  }

  dimension: nsn_flg {
    type: string
    sql: ${TABLE}.NSN_FLG ;;
  }

  dimension: nstnd_split_cd {
    type: string
    sql: ${TABLE}.NSTND_SPLIT_CD ;;
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

  dimension: order_fax_sw {
    type: string
    sql: ${TABLE}.ORDER_FAX_SW ;;
  }

  dimension: os_salesman {
    type: string
    sql: ${TABLE}.OS_SALESMAN ;;
  }

  dimension: phone_ctry {
    type: string
    sql: ${TABLE}.PHONE_CTRY ;;
  }

  dimension: phone_intl {
    type: string
    sql: ${TABLE}.PHONE_INTL ;;
  }

  dimension: phone_nbr {
    type: string
    sql: ${TABLE}.PHONE_NBR ;;
  }

  dimension: pick_group {
    type: string
    sql: ${TABLE}.PICK_GROUP ;;
  }

  dimension: postal_codes {
    type: string
    sql: ${TABLE}.POSTAL_CODES ;;
  }

  dimension: pp_fax_number {
    type: string
    sql: ${TABLE}.PP_FAX_NUMBER ;;
  }

  dimension: print_sw {
    type: string
    sql: ${TABLE}.PRINT_SW ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }

  dimension: rfid_flag {
    type: string
    sql: ${TABLE}.RFID_FLAG ;;
  }

  dimension: routing_cd {
    type: string
    sql: ${TABLE}.ROUTING_CD ;;
  }

  dimension: rpl_change_date {
    type: number
    sql: ${TABLE}.RPL_CHANGE_DATE ;;
  }

  dimension: rpl_hold_nam_addr_id {
    type: number
    sql: ${TABLE}.RPL_HOLD_NAM_ADDR_ID ;;
  }

  dimension: rpl_hold_score {
    type: string
    sql: ${TABLE}.RPL_HOLD_SCORE ;;
  }

  dimension: rpl_hold_sw {
    type: string
    sql: ${TABLE}.RPL_HOLD_SW ;;
  }

  dimension: rpl_opid {
    type: string
    sql: ${TABLE}.RPL_OPID ;;
  }

  dimension: ship_from {
    type: string
    sql: ${TABLE}.SHIP_FROM ;;
  }

  dimension: ship_from_co {
    type: string
    sql: ${TABLE}.SHIP_FROM_CO ;;
  }

  dimension: ship_via {
    type: string
    sql: ${TABLE}.SHIP_VIA ;;
  }

  dimension: sml_carr_sw {
    type: string
    sql: ${TABLE}.SML_CARR_SW ;;
  }

  dimension: split_freight {
    type: string
    sql: ${TABLE}.SPLIT_FREIGHT ;;
  }

  dimension: split_frt_branch {
    type: string
    sql: ${TABLE}.SPLIT_FRT_BRANCH ;;
  }

  dimension: splt_frt_3_party_bill {
    type: string
    sql: ${TABLE}.SPLT_FRT_3PARTY_BILL ;;
  }

  dimension: splt_frt_payment {
    type: string
    sql: ${TABLE}.SPLT_FRT_PAYMENT ;;
  }

  dimension: st_l {
    type: string
    sql: ${TABLE}.ST_L ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.STATE_CODE ;;
  }

  dimension: std_ind_code {
    type: string
    sql: ${TABLE}.STD_IND_CODE ;;
  }

  dimension: stnd_split_cd {
    type: string
    sql: ${TABLE}.STND_SPLIT_CD ;;
  }

  dimension: suffix {
    type: string
    sql: ${TABLE}.SUFFIX ;;
  }

  dimension: tax_code {
    type: string
    sql: ${TABLE}.TAX_CODE ;;
  }

  dimension: tax_exempt_nbr {
    type: number
    sql: ${TABLE}.TAX_EXEMPT_NBR ;;
  }

  dimension: tax_letter_number {
    type: number
    sql: ${TABLE}.TAX_LETTER_NUMBER ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_tax_letter_number {
    type: sum
    sql: ${tax_letter_number} ;;
  }

  measure: average_tax_letter_number {
    type: average
    sql: ${tax_letter_number} ;;
  }

  dimension: third_party_billing {
    type: string
    sql: ${TABLE}.THIRD_PARTY_BILLING ;;
  }

  dimension: transit_day_flg {
    type: string
    sql: ${TABLE}.TRANSIT_DAY_FLG ;;
  }

  dimension: usps_firm_code {
    type: string
    sql: ${TABLE}.USPS_FIRM_CODE ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.ZIP_CODE ;;
  }

  dimension: zip_l {
    type: string
    sql: ${TABLE}.ZIP_L ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
