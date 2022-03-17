# The name of this view in Looker is "Vsam Tbxbrseq"
view: vsam_tbxbrseq {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXBRSEQ`
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

  dimension: tb_bs_br {
    type: string
    sql: ${TABLE}.TB_BS_BR ;;
  }

  dimension: tb_bs_br_nbr_01 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_01 ;;
  }

  dimension: tb_bs_br_nbr_02 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_02 ;;
  }

  dimension: tb_bs_br_nbr_03 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_03 ;;
  }

  dimension: tb_bs_br_nbr_04 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_04 ;;
  }

  dimension: tb_bs_br_nbr_05 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_05 ;;
  }

  dimension: tb_bs_br_nbr_06 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_06 ;;
  }

  dimension: tb_bs_br_nbr_07 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_07 ;;
  }

  dimension: tb_bs_br_nbr_08 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_08 ;;
  }

  dimension: tb_bs_br_nbr_09 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_09 ;;
  }

  dimension: tb_bs_br_nbr_10 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_10 ;;
  }

  dimension: tb_bs_br_nbr_11 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_11 ;;
  }

  dimension: tb_bs_br_nbr_12 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_12 ;;
  }

  dimension: tb_bs_br_nbr_13 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_13 ;;
  }

  dimension: tb_bs_br_nbr_14 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_14 ;;
  }

  dimension: tb_bs_br_nbr_15 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_15 ;;
  }

  dimension: tb_bs_br_nbr_16 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_16 ;;
  }

  dimension: tb_bs_br_nbr_17 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_17 ;;
  }

  dimension: tb_bs_br_nbr_18 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_18 ;;
  }

  dimension: tb_bs_br_nbr_19 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_19 ;;
  }

  dimension: tb_bs_br_nbr_20 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_20 ;;
  }

  dimension: tb_bs_br_nbr_21 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_21 ;;
  }

  dimension: tb_bs_br_nbr_22 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_22 ;;
  }

  dimension: tb_bs_br_nbr_23 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_23 ;;
  }

  dimension: tb_bs_br_nbr_24 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_24 ;;
  }

  dimension: tb_bs_br_nbr_25 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_25 ;;
  }

  dimension: tb_bs_br_nbr_26 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_26 ;;
  }

  dimension: tb_bs_br_nbr_27 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_27 ;;
  }

  dimension: tb_bs_br_nbr_28 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_28 ;;
  }

  dimension: tb_bs_br_nbr_29 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_29 ;;
  }

  dimension: tb_bs_br_nbr_30 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_30 ;;
  }

  dimension: tb_bs_br_nbr_31 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_31 ;;
  }

  dimension: tb_bs_br_nbr_32 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_32 ;;
  }

  dimension: tb_bs_br_nbr_33 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_33 ;;
  }

  dimension: tb_bs_br_nbr_34 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_34 ;;
  }

  dimension: tb_bs_br_nbr_35 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_35 ;;
  }

  dimension: tb_bs_br_nbr_36 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_36 ;;
  }

  dimension: tb_bs_br_nbr_37 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_37 ;;
  }

  dimension: tb_bs_br_nbr_38 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_38 ;;
  }

  dimension: tb_bs_br_nbr_39 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_39 ;;
  }

  dimension: tb_bs_br_nbr_40 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_40 ;;
  }

  dimension: tb_bs_br_nbr_41 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_41 ;;
  }

  dimension: tb_bs_br_nbr_42 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_42 ;;
  }

  dimension: tb_bs_br_nbr_43 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_43 ;;
  }

  dimension: tb_bs_br_nbr_44 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_44 ;;
  }

  dimension: tb_bs_br_nbr_45 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_45 ;;
  }

  dimension: tb_bs_br_nbr_46 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_46 ;;
  }

  dimension: tb_bs_br_nbr_47 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_47 ;;
  }

  dimension: tb_bs_br_nbr_48 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_48 ;;
  }

  dimension: tb_bs_br_nbr_49 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_49 ;;
  }

  dimension: tb_bs_br_nbr_50 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_50 ;;
  }

  dimension: tb_bs_br_nbr_51 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_51 ;;
  }

  dimension: tb_bs_br_nbr_52 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_52 ;;
  }

  dimension: tb_bs_br_nbr_53 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_53 ;;
  }

  dimension: tb_bs_br_nbr_54 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_54 ;;
  }

  dimension: tb_bs_br_nbr_55 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_55 ;;
  }

  dimension: tb_bs_br_nbr_56 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_56 ;;
  }

  dimension: tb_bs_br_nbr_57 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_57 ;;
  }

  dimension: tb_bs_br_nbr_58 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_58 ;;
  }

  dimension: tb_bs_br_nbr_59 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_59 ;;
  }

  dimension: tb_bs_br_nbr_60 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_60 ;;
  }

  dimension: tb_bs_br_nbr_61 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_61 ;;
  }

  dimension: tb_bs_br_nbr_62 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_62 ;;
  }

  dimension: tb_bs_br_nbr_63 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_63 ;;
  }

  dimension: tb_bs_br_nbr_64 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_64 ;;
  }

  dimension: tb_bs_br_nbr_65 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_65 ;;
  }

  dimension: tb_bs_br_nbr_66 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_66 ;;
  }

  dimension: tb_bs_br_nbr_67 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_67 ;;
  }

  dimension: tb_bs_br_nbr_68 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_68 ;;
  }

  dimension: tb_bs_br_nbr_69 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_69 ;;
  }

  dimension: tb_bs_br_nbr_70 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_70 ;;
  }

  dimension: tb_bs_br_nbr_71 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_71 ;;
  }

  dimension: tb_bs_br_nbr_72 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_72 ;;
  }

  dimension: tb_bs_br_nbr_73 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_73 ;;
  }

  dimension: tb_bs_br_nbr_74 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_74 ;;
  }

  dimension: tb_bs_br_nbr_75 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_75 ;;
  }

  dimension: tb_bs_br_nbr_76 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_76 ;;
  }

  dimension: tb_bs_br_nbr_77 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_77 ;;
  }

  dimension: tb_bs_br_nbr_78 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_78 ;;
  }

  dimension: tb_bs_br_nbr_79 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_79 ;;
  }

  dimension: tb_bs_br_nbr_80 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_80 ;;
  }

  dimension: tb_bs_br_nbr_81 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_81 ;;
  }

  dimension: tb_bs_br_nbr_82 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_82 ;;
  }

  dimension: tb_bs_br_nbr_83 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_83 ;;
  }

  dimension: tb_bs_br_nbr_84 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_84 ;;
  }

  dimension: tb_bs_br_nbr_85 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_85 ;;
  }

  dimension: tb_bs_br_nbr_86 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_86 ;;
  }

  dimension: tb_bs_br_nbr_87 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_87 ;;
  }

  dimension: tb_bs_br_nbr_88 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_88 ;;
  }

  dimension: tb_bs_br_nbr_89 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_89 ;;
  }

  dimension: tb_bs_br_nbr_90 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_90 ;;
  }

  dimension: tb_bs_br_nbr_91 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_91 ;;
  }

  dimension: tb_bs_br_nbr_92 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_92 ;;
  }

  dimension: tb_bs_br_nbr_93 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_93 ;;
  }

  dimension: tb_bs_br_nbr_94 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_94 ;;
  }

  dimension: tb_bs_br_nbr_95 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_95 ;;
  }

  dimension: tb_bs_br_nbr_96 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_96 ;;
  }

  dimension: tb_bs_br_nbr_97 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_97 ;;
  }

  dimension: tb_bs_br_nbr_98 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_98 ;;
  }

  dimension: tb_bs_br_nbr_99 {
    type: string
    sql: ${TABLE}.TB_BS_BR_NBR_99 ;;
  }

  dimension: tb_bs_company_code {
    type: string
    sql: ${TABLE}.TB_BS_COMPANY_CODE ;;
  }

  dimension_group: tb_bs_last_chg_ts {
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
    sql: ${TABLE}.TB_BS_LAST_CHG_TS ;;
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
