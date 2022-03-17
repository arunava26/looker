# The name of this view in Looker is "Ods Po Drct Po Eu Info"
view: ods_po_drct_po_eu_info {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_PO_DRCT_PO_EU_INFO`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acop Eu ID" in Explore.

  dimension: acop_eu_id {
    type: number
    sql: ${TABLE}.ACOP_EU_ID ;;
  }

  dimension: addr_1_txt {
    type: string
    sql: ${TABLE}.ADDR_1_TXT ;;
  }

  dimension: addr_2_txt {
    type: string
    sql: ${TABLE}.ADDR_2_TXT ;;
  }

  dimension: addr_3_txt {
    type: string
    sql: ${TABLE}.ADDR_3_TXT ;;
  }

  dimension: addr_4_txt {
    type: string
    sql: ${TABLE}.ADDR_4_TXT ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: city_nam {
    type: string
    sql: ${TABLE}.CITY_NAM ;;
  }

  dimension: co_cd {
    type: string
    sql: ${TABLE}.CO_CD ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: crt_dt {
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
    sql: ${TABLE}.CRT_DT ;;
  }

  dimension: ctac_nam {
    type: string
    sql: ${TABLE}.CTAC_NAM ;;
  }

  dimension: ctac_phn_nbr {
    type: string
    sql: ${TABLE}.CTAC_PHN_NBR ;;
  }

  dimension: ctry_cd {
    type: string
    sql: ${TABLE}.CTRY_CD ;;
  }

  dimension: emal_addr_1_txt {
    type: string
    sql: ${TABLE}.EMAL_ADDR_1_TXT ;;
  }

  dimension: emal_addr_2_txt {
    type: string
    sql: ${TABLE}.EMAL_ADDR_2_TXT ;;
  }

  dimension: eu_co_nam {
    type: string
    sql: ${TABLE}.EU_CO_NAM ;;
  }

  dimension: eu_vend_cont_nbr {
    type: number
    sql: ${TABLE}.EU_VEND_CONT_NBR ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_eu_vend_cont_nbr {
    type: sum
    sql: ${eu_vend_cont_nbr} ;;
  }

  measure: average_eu_vend_cont_nbr {
    type: average
    sql: ${eu_vend_cont_nbr} ;;
  }

  dimension: ims_del_flg {
    type: string
    sql: ${TABLE}.IMS_DEL_FLG ;;
  }

  dimension: mrkt_sgmt_typ_cd {
    type: string
    sql: ${TABLE}.MRKT_SGMT_TYP_CD ;;
  }

  dimension_group: ods_last_upd_ts {
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
    sql: ${TABLE}.ODS_LAST_UPD_TS ;;
  }

  dimension: phn_nbr {
    type: string
    sql: ${TABLE}.PHN_NBR ;;
  }

  dimension: po_line_nbr {
    type: string
    sql: ${TABLE}.PO_LINE_NBR ;;
  }

  dimension: po_nbr {
    type: string
    sql: ${TABLE}.PO_NBR ;;
  }

  dimension: post_cd {
    type: string
    sql: ${TABLE}.POST_CD ;;
  }

  dimension: st_pvnc_cd {
    type: string
    sql: ${TABLE}.ST_PVNC_CD ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
