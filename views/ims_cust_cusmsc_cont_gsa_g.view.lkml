# The name of this view in Looker is "Ims Cust Cusmsc Cont Gsa G"
view: ims_cust_cusmsc_cont_gsa_g {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_CUST_CUSMSC_CONT_GSA_G`
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

  dimension: contract_create_file_ind {
    type: string
    sql: ${TABLE}.CONTRACT_CREATE_FILE_IND ;;
  }

  dimension: contract_program_gsa_ind_1 {
    type: string
    sql: ${TABLE}.CONTRACT_PROGRAM_GSA_IND_1 ;;
  }

  dimension: contract_program_gsa_ind_10 {
    type: string
    sql: ${TABLE}.CONTRACT_PROGRAM_GSA_IND_10 ;;
  }

  dimension: contract_program_gsa_ind_2 {
    type: string
    sql: ${TABLE}.CONTRACT_PROGRAM_GSA_IND_2 ;;
  }

  dimension: contract_program_gsa_ind_3 {
    type: string
    sql: ${TABLE}.CONTRACT_PROGRAM_GSA_IND_3 ;;
  }

  dimension: contract_program_gsa_ind_4 {
    type: string
    sql: ${TABLE}.CONTRACT_PROGRAM_GSA_IND_4 ;;
  }

  dimension: contract_program_gsa_ind_5 {
    type: string
    sql: ${TABLE}.CONTRACT_PROGRAM_GSA_IND_5 ;;
  }

  dimension: contract_program_gsa_ind_6 {
    type: string
    sql: ${TABLE}.CONTRACT_PROGRAM_GSA_IND_6 ;;
  }

  dimension: contract_program_gsa_ind_7 {
    type: string
    sql: ${TABLE}.CONTRACT_PROGRAM_GSA_IND_7 ;;
  }

  dimension: contract_program_gsa_ind_8 {
    type: string
    sql: ${TABLE}.CONTRACT_PROGRAM_GSA_IND_8 ;;
  }

  dimension: contract_program_gsa_ind_9 {
    type: string
    sql: ${TABLE}.CONTRACT_PROGRAM_GSA_IND_9 ;;
  }

  dimension: contract_program_type_1 {
    type: string
    sql: ${TABLE}.CONTRACT_PROGRAM_TYPE_1 ;;
  }

  dimension: contract_program_type_10 {
    type: string
    sql: ${TABLE}.CONTRACT_PROGRAM_TYPE_10 ;;
  }

  dimension: contract_program_type_2 {
    type: string
    sql: ${TABLE}.CONTRACT_PROGRAM_TYPE_2 ;;
  }

  dimension: contract_program_type_3 {
    type: string
    sql: ${TABLE}.CONTRACT_PROGRAM_TYPE_3 ;;
  }

  dimension: contract_program_type_4 {
    type: string
    sql: ${TABLE}.CONTRACT_PROGRAM_TYPE_4 ;;
  }

  dimension: contract_program_type_5 {
    type: string
    sql: ${TABLE}.CONTRACT_PROGRAM_TYPE_5 ;;
  }

  dimension: contract_program_type_6 {
    type: string
    sql: ${TABLE}.CONTRACT_PROGRAM_TYPE_6 ;;
  }

  dimension: contract_program_type_7 {
    type: string
    sql: ${TABLE}.CONTRACT_PROGRAM_TYPE_7 ;;
  }

  dimension: contract_program_type_8 {
    type: string
    sql: ${TABLE}.CONTRACT_PROGRAM_TYPE_8 ;;
  }

  dimension: contract_program_type_9 {
    type: string
    sql: ${TABLE}.CONTRACT_PROGRAM_TYPE_9 ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
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
