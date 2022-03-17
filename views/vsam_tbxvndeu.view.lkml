# The name of this view in Looker is "Vsam Tbxvndeu"
view: vsam_tbxvndeu {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXVNDEU`
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

  dimension: tb_vndeu_activity {
    type: string
    sql: ${TABLE}.TB_VNDEU_ACTIVITY ;;
  }

  dimension: tb_vndeu_addit_addr_sw {
    type: string
    sql: ${TABLE}.TB_VNDEU_ADDIT_ADDR_SW ;;
  }

  dimension: tb_vndeu_auth_sw {
    type: string
    sql: ${TABLE}.TB_VNDEU_AUTH_SW ;;
  }

  dimension: tb_vndeu_city_sw {
    type: string
    sql: ${TABLE}.TB_VNDEU_CITY_SW ;;
  }

  dimension: tb_vndeu_cnt_name_sw {
    type: string
    sql: ${TABLE}.TB_VNDEU_CNT_NAME_SW ;;
  }

  dimension: tb_vndeu_co_name_sw {
    type: string
    sql: ${TABLE}.TB_VNDEU_CO_NAME_SW ;;
  }

  dimension: tb_vndeu_description {
    type: string
    sql: ${TABLE}.TB_VNDEU_DESCRIPTION ;;
  }

  dimension: tb_vndeu_desktops {
    type: string
    sql: ${TABLE}.TB_VNDEU_DESKTOPS ;;
  }

  dimension: tb_vndeu_email_sw {
    type: string
    sql: ${TABLE}.TB_VNDEU_EMAIL_SW ;;
  }

  dimension: tb_vndeu_fax_sw {
    type: string
    sql: ${TABLE}.TB_VNDEU_FAX_SW ;;
  }

  dimension: tb_vndeu_flag {
    type: string
    sql: ${TABLE}.TB_VNDEU_FLAG ;;
  }

  dimension_group: tb_vndeu_last_chg_ts {
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
    sql: ${TABLE}.TB_VNDEU_LAST_CHG_TS ;;
  }

  dimension: tb_vndeu_order_code {
    type: string
    sql: ${TABLE}.TB_VNDEU_ORDER_CODE ;;
  }

  dimension: tb_vndeu_phone_sw {
    type: string
    sql: ${TABLE}.TB_VNDEU_PHONE_SW ;;
  }

  dimension: tb_vndeu_pricing {
    type: string
    sql: ${TABLE}.TB_VNDEU_PRICING ;;
  }

  dimension: tb_vndeu_region_code {
    type: string
    sql: ${TABLE}.TB_VNDEU_REGION_CODE ;;
  }

  dimension: tb_vndeu_state_sw {
    type: string
    sql: ${TABLE}.TB_VNDEU_STATE_SW ;;
  }

  dimension: tb_vndeu_street_sw {
    type: string
    sql: ${TABLE}.TB_VNDEU_STREET_SW ;;
  }

  dimension: tb_vndeu_title_sw {
    type: string
    sql: ${TABLE}.TB_VNDEU_TITLE_SW ;;
  }

  dimension: tb_vndeu_vat_nbr {
    type: string
    sql: ${TABLE}.TB_VNDEU_VAT_NBR ;;
  }

  dimension: tb_vndeu_zip_sw {
    type: string
    sql: ${TABLE}.TB_VNDEU_ZIP_SW ;;
  }

  dimension: trans_auth_id {
    type: string
    sql: ${TABLE}.TRANS_AUTH_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
