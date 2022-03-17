# The name of this view in Looker is "Vsam Tbxcti Sb"
view: vsam_tbxcti_sb {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXCTI_SB`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

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

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Tb Cti Asr Cust Type" in Explore.

  dimension: tb_cti_asr_cust_type {
    type: string
    sql: ${TABLE}.TB_CTI_ASR_CUST_TYPE ;;
  }

  dimension: tb_cti_asr_queue_priority {
    type: string
    sql: ${TABLE}.TB_CTI_ASR_QUEUE_PRIORITY ;;
  }

  dimension: tb_cti_asr_routing_ind {
    type: string
    sql: ${TABLE}.TB_CTI_ASR_ROUTING_IND ;;
  }

  dimension: tb_cti_company_code {
    type: string
    sql: ${TABLE}.TB_CTI_COMPANY_CODE ;;
  }

  dimension: tb_cti_credit_emergency_sw {
    type: string
    sql: ${TABLE}.TB_CTI_CREDIT_EMERGENCY_SW ;;
  }

  dimension: tb_cti_cs_cust_type {
    type: string
    sql: ${TABLE}.TB_CTI_CS_CUST_TYPE ;;
  }

  dimension: tb_cti_cs_queue_priority {
    type: string
    sql: ${TABLE}.TB_CTI_CS_QUEUE_PRIORITY ;;
  }

  dimension: tb_cti_last_3_mth_sales {
    type: number
    sql: ${TABLE}.TB_CTI_LAST_3MTH_SALES ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_tb_cti_last_3_mth_sales {
    type: sum
    sql: ${tb_cti_last_3_mth_sales} ;;
  }

  measure: average_tb_cti_last_3_mth_sales {
    type: average
    sql: ${tb_cti_last_3_mth_sales} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
