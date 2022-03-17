# The name of this view in Looker is "Ims Prod Std Msg Insstd Z"
view: ims_prod_std_msg_insstd_z {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_STD_MSG_INSSTD_Z`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Company" in Explore.

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: message_doc_1 {
    type: string
    sql: ${TABLE}.MESSAGE_DOC_1 ;;
  }

  dimension: message_doc_10 {
    type: string
    sql: ${TABLE}.MESSAGE_DOC_10 ;;
  }

  dimension: message_doc_2 {
    type: string
    sql: ${TABLE}.MESSAGE_DOC_2 ;;
  }

  dimension: message_doc_3 {
    type: string
    sql: ${TABLE}.MESSAGE_DOC_3 ;;
  }

  dimension: message_doc_4 {
    type: string
    sql: ${TABLE}.MESSAGE_DOC_4 ;;
  }

  dimension: message_doc_5 {
    type: string
    sql: ${TABLE}.MESSAGE_DOC_5 ;;
  }

  dimension: message_doc_6 {
    type: string
    sql: ${TABLE}.MESSAGE_DOC_6 ;;
  }

  dimension: message_doc_7 {
    type: string
    sql: ${TABLE}.MESSAGE_DOC_7 ;;
  }

  dimension: message_doc_8 {
    type: string
    sql: ${TABLE}.MESSAGE_DOC_8 ;;
  }

  dimension: message_doc_9 {
    type: string
    sql: ${TABLE}.MESSAGE_DOC_9 ;;
  }

  dimension: message_key_1 {
    type: string
    sql: ${TABLE}.MESSAGE_KEY_1 ;;
  }

  dimension: message_key_10 {
    type: string
    sql: ${TABLE}.MESSAGE_KEY_10 ;;
  }

  dimension: message_key_2 {
    type: string
    sql: ${TABLE}.MESSAGE_KEY_2 ;;
  }

  dimension: message_key_3 {
    type: string
    sql: ${TABLE}.MESSAGE_KEY_3 ;;
  }

  dimension: message_key_4 {
    type: string
    sql: ${TABLE}.MESSAGE_KEY_4 ;;
  }

  dimension: message_key_5 {
    type: string
    sql: ${TABLE}.MESSAGE_KEY_5 ;;
  }

  dimension: message_key_6 {
    type: string
    sql: ${TABLE}.MESSAGE_KEY_6 ;;
  }

  dimension: message_key_7 {
    type: string
    sql: ${TABLE}.MESSAGE_KEY_7 ;;
  }

  dimension: message_key_8 {
    type: string
    sql: ${TABLE}.MESSAGE_KEY_8 ;;
  }

  dimension: message_key_9 {
    type: string
    sql: ${TABLE}.MESSAGE_KEY_9 ;;
  }

  dimension: message_print_1 {
    type: string
    sql: ${TABLE}.MESSAGE_PRINT_1 ;;
  }

  dimension: message_print_10 {
    type: string
    sql: ${TABLE}.MESSAGE_PRINT_10 ;;
  }

  dimension: message_print_2 {
    type: string
    sql: ${TABLE}.MESSAGE_PRINT_2 ;;
  }

  dimension: message_print_3 {
    type: string
    sql: ${TABLE}.MESSAGE_PRINT_3 ;;
  }

  dimension: message_print_4 {
    type: string
    sql: ${TABLE}.MESSAGE_PRINT_4 ;;
  }

  dimension: message_print_5 {
    type: string
    sql: ${TABLE}.MESSAGE_PRINT_5 ;;
  }

  dimension: message_print_6 {
    type: string
    sql: ${TABLE}.MESSAGE_PRINT_6 ;;
  }

  dimension: message_print_7 {
    type: string
    sql: ${TABLE}.MESSAGE_PRINT_7 ;;
  }

  dimension: message_print_8 {
    type: string
    sql: ${TABLE}.MESSAGE_PRINT_8 ;;
  }

  dimension: message_print_9 {
    type: string
    sql: ${TABLE}.MESSAGE_PRINT_9 ;;
  }

  dimension: message_type_1 {
    type: string
    sql: ${TABLE}.MESSAGE_TYPE_1 ;;
  }

  dimension: message_type_10 {
    type: string
    sql: ${TABLE}.MESSAGE_TYPE_10 ;;
  }

  dimension: message_type_2 {
    type: string
    sql: ${TABLE}.MESSAGE_TYPE_2 ;;
  }

  dimension: message_type_3 {
    type: string
    sql: ${TABLE}.MESSAGE_TYPE_3 ;;
  }

  dimension: message_type_4 {
    type: string
    sql: ${TABLE}.MESSAGE_TYPE_4 ;;
  }

  dimension: message_type_5 {
    type: string
    sql: ${TABLE}.MESSAGE_TYPE_5 ;;
  }

  dimension: message_type_6 {
    type: string
    sql: ${TABLE}.MESSAGE_TYPE_6 ;;
  }

  dimension: message_type_7 {
    type: string
    sql: ${TABLE}.MESSAGE_TYPE_7 ;;
  }

  dimension: message_type_8 {
    type: string
    sql: ${TABLE}.MESSAGE_TYPE_8 ;;
  }

  dimension: message_type_9 {
    type: string
    sql: ${TABLE}.MESSAGE_TYPE_9 ;;
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

  dimension: segment_ind {
    type: string
    sql: ${TABLE}.SEGMENT_IND ;;
  }

  dimension: seq_nbr {
    type: number
    sql: ${TABLE}.SEQ_NBR ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_seq_nbr {
    type: sum
    sql: ${seq_nbr} ;;
  }

  measure: average_seq_nbr {
    type: average
    sql: ${seq_nbr} ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
