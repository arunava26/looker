# The name of this view in Looker is "Vsam Tbxcarr"
view: vsam_tbxcarr {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXCARR`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Correl ID" in Explore.

  dimension: correl_id {
    type: string
    sql: ${TABLE}.CORREL_ID ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ods_isrt_ts {
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
    sql: ${TABLE}.ODS_ISRT_TS ;;
  }

  dimension_group: ods_upd_ts {
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
    sql: ${TABLE}.ODS_UPD_TS ;;
  }

  dimension: plan_nam {
    type: string
    sql: ${TABLE}.PLAN_NAM ;;
  }

  dimension: tb_carr_aw_carrier_sw {
    type: string
    sql: ${TABLE}.TB_CARR_AW_CARRIER_SW ;;
  }

  dimension: tb_carr_baserate_sw {
    type: string
    sql: ${TABLE}.TB_CARR_BASERATE_SW ;;
  }

  dimension: tb_carr_bill_type {
    type: string
    sql: ${TABLE}.TB_CARR_BILL_TYPE ;;
  }

  dimension: tb_carr_br_multi_lane_sw {
    type: string
    sql: ${TABLE}.TB_CARR_BR_MULTI_LANE_SW ;;
  }

  dimension: tb_carr_carrier_cod_charge {
    type: string
    sql: ${TABLE}.TB_CARR_CARRIER_COD_CHARGE ;;
  }

  dimension: tb_carr_chg_bko_frt_sw {
    type: string
    sql: ${TABLE}.TB_CARR_CHG_BKO_FRT_SW ;;
  }

  dimension: tb_carr_co {
    type: string
    sql: ${TABLE}.TB_CARR_CO ;;
  }

  dimension: tb_carr_cod_charge_sw {
    type: string
    sql: ${TABLE}.TB_CARR_COD_CHARGE_SW ;;
  }

  dimension: tb_carr_cod_fee {
    type: number
    sql: ${TABLE}.TB_CARR_COD_FEE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_tb_carr_cod_fee {
    type: sum
    sql: ${tb_carr_cod_fee} ;;
  }

  measure: average_tb_carr_cod_fee {
    type: average
    sql: ${tb_carr_cod_fee} ;;
  }

  dimension: tb_carr_code {
    type: string
    sql: ${TABLE}.TB_CARR_CODE ;;
  }

  dimension: tb_carr_export_category {
    type: string
    sql: ${TABLE}.TB_CARR_EXPORT_CATEGORY ;;
  }

  dimension: tb_carr_flat_frt_sgd {
    type: number
    sql: ${TABLE}.TB_CARR_FLAT_FRT_SGD ;;
  }

  dimension: tb_carr_flat_frt_usd {
    type: number
    sql: ${TABLE}.TB_CARR_FLAT_FRT_USD ;;
  }

  dimension: tb_carr_freight_fwd_sw {
    type: string
    sql: ${TABLE}.TB_CARR_FREIGHT_FWD_SW ;;
  }

  dimension: tb_carr_frt_charge_sw {
    type: string
    sql: ${TABLE}.TB_CARR_FRT_CHARGE_SW ;;
  }

  dimension: tb_carr_handling_chg {
    type: number
    sql: ${TABLE}.TB_CARR_HANDLING_CHG ;;
  }

  dimension_group: tb_carr_last_chg_ts {
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
    sql: ${TABLE}.TB_CARR_LAST_CHG_TS ;;
  }

  dimension: tb_carr_max_dollar_sgd {
    type: number
    sql: ${TABLE}.TB_CARR_MAX_DOLLAR_SGD ;;
  }

  dimension: tb_carr_mh10_type_label_sw {
    type: string
    sql: ${TABLE}.TB_CARR_MH10_TYPE_LABEL_SW ;;
  }

  dimension: tb_carr_mode {
    type: string
    sql: ${TABLE}.TB_CARR_MODE ;;
  }

  dimension: tb_carr_name {
    type: string
    sql: ${TABLE}.TB_CARR_NAME ;;
  }

  dimension: tb_carr_package_constant {
    type: number
    sql: ${TABLE}.TB_CARR_PACKAGE_CONSTANT ;;
  }

  dimension: tb_carr_printer_dest {
    type: string
    sql: ${TABLE}.TB_CARR_PRINTER_DEST ;;
  }

  dimension: tb_carr_scac_code {
    type: string
    sql: ${TABLE}.TB_CARR_SCAC_CODE ;;
  }

  dimension: tb_carr_service_alpha_code {
    type: string
    sql: ${TABLE}.TB_CARR_SERVICE_ALPHA_CODE ;;
  }

  dimension: tb_carr_service_id {
    type: string
    sql: ${TABLE}.TB_CARR_SERVICE_ID ;;
  }

  dimension: tb_carr_service_name {
    type: string
    sql: ${TABLE}.TB_CARR_SERVICE_NAME ;;
  }

  dimension: tb_carr_ship_lane_code {
    type: string
    sql: ${TABLE}.TB_CARR_SHIP_LANE_CODE ;;
  }

  dimension: tb_carr_use_zone_sw {
    type: string
    sql: ${TABLE}.TB_CARR_USE_ZONE_SW ;;
  }

  dimension: tb_carr_used_by_co_or_br {
    type: string
    sql: ${TABLE}.TB_CARR_USED_BY_CO_OR_BR ;;
  }

  dimension: tb_carr_valid_caps_sw {
    type: string
    sql: ${TABLE}.TB_CARR_VALID_CAPS_SW ;;
  }

  dimension: tb_carr_vendor_nbr {
    type: string
    sql: ${TABLE}.TB_CARR_VENDOR_NBR ;;
  }

  dimension: tb_carr_where_used {
    type: string
    sql: ${TABLE}.TB_CARR_WHERE_USED ;;
  }

  dimension: tb_carrier {
    type: string
    sql: ${TABLE}.TB_CARRIER ;;
  }

  dimension: tb_pallets_bill_sw {
    type: string
    sql: ${TABLE}.TB_PALLETS_BILL_SW ;;
  }

  dimension: tb_upgrade_service_sw {
    type: string
    sql: ${TABLE}.TB_UPGRADE_SERVICE_SW ;;
  }

  dimension: trans_auth_id {
    type: string
    sql: ${TABLE}.TRANS_AUTH_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [tb_carr_service_name, tb_carr_name]
  }
}
