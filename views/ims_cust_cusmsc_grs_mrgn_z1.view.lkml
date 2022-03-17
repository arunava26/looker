# The name of this view in Looker is "Ims Cust Cusmsc Grs Mrgn Z1"
view: ims_cust_cusmsc_grs_mrgn_z1 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_CUST_CUSMSC_GRS_MRGN_Z1`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Br Nbr" in Explore.

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: microd_gm_1 {
    type: number
    sql: ${TABLE}.MICROD_GM_1 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_microd_gm_1 {
    type: sum
    sql: ${microd_gm_1} ;;
  }

  measure: average_microd_gm_1 {
    type: average
    sql: ${microd_gm_1} ;;
  }

  dimension: microd_gm_1_new {
    type: number
    sql: ${TABLE}.MICROD_GM_1_NEW ;;
  }

  dimension: microd_gm_2 {
    type: number
    sql: ${TABLE}.MICROD_GM_2 ;;
  }

  dimension: microd_gm_2_new {
    type: number
    sql: ${TABLE}.MICROD_GM_2_NEW ;;
  }

  dimension: microd_gm_3 {
    type: number
    sql: ${TABLE}.MICROD_GM_3 ;;
  }

  dimension: microd_gm_3_new {
    type: number
    sql: ${TABLE}.MICROD_GM_3_NEW ;;
  }

  dimension: microd_gm_4 {
    type: number
    sql: ${TABLE}.MICROD_GM_4 ;;
  }

  dimension: microd_gm_4_new {
    type: number
    sql: ${TABLE}.MICROD_GM_4_NEW ;;
  }

  dimension: microd_gm_5 {
    type: number
    sql: ${TABLE}.MICROD_GM_5 ;;
  }

  dimension: microd_gm_5_new {
    type: number
    sql: ${TABLE}.MICROD_GM_5_NEW ;;
  }

  dimension: microd_gmc_1 {
    type: string
    sql: ${TABLE}.MICROD_GMC_1 ;;
  }

  dimension: microd_gmc_2 {
    type: string
    sql: ${TABLE}.MICROD_GMC_2 ;;
  }

  dimension: microd_gmc_3 {
    type: string
    sql: ${TABLE}.MICROD_GMC_3 ;;
  }

  dimension: microd_gmc_4 {
    type: string
    sql: ${TABLE}.MICROD_GMC_4 ;;
  }

  dimension: microd_gmc_5 {
    type: string
    sql: ${TABLE}.MICROD_GMC_5 ;;
  }

  dimension: microd_z_type {
    type: string
    sql: ${TABLE}.MICROD_Z_TYPE ;;
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

  dimension: segment_type {
    type: string
    sql: ${TABLE}.SEGMENT_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
