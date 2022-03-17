# The name of this view in Looker is "Ims Vndr Vnspch Purc Addr 1"
view: ims_vndr_vnspch_purc_addr_1 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_VNDR_VNSPCH_PURC_ADDR_1`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Auto Email Nbr" in Explore.

  dimension: auto_email_nbr {
    type: string
    sql: ${TABLE}.AUTO_EMAIL_NBR ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
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

  dimension: purchasing_addr2 {
    type: string
    sql: ${TABLE}.PURCHASING_ADDR2 ;;
  }

  dimension: purchasing_addr3 {
    type: string
    sql: ${TABLE}.PURCHASING_ADDR3 ;;
  }

  dimension: purchasing_comm {
    type: string
    sql: ${TABLE}.PURCHASING_COMM ;;
  }

  dimension: purchasing_suffix {
    type: string
    sql: ${TABLE}.PURCHASING_SUFFIX ;;
  }

  dimension: seg_type_vnspch {
    type: string
    sql: ${TABLE}.SEG_TYPE_VNSPCH ;;
  }

  dimension: status_purch_vendor {
    type: string
    sql: ${TABLE}.STATUS_PURCH_VENDOR ;;
  }

  dimension: vendor_class {
    type: string
    sql: ${TABLE}.VENDOR_CLASS ;;
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
