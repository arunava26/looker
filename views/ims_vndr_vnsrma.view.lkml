# The name of this view in Looker is "Ims Vndr Vnsrma"
view: ims_vndr_vnsrma {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_VNDR_VNSRMA`
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

  dimension: payee_suffix {
    type: string
    sql: ${TABLE}.PAYEE_SUFFIX ;;
  }

  dimension: remit_addr1 {
    type: string
    sql: ${TABLE}.REMIT_ADDR1 ;;
  }

  dimension: remit_addr2 {
    type: string
    sql: ${TABLE}.REMIT_ADDR2 ;;
  }

  dimension: remit_addr3 {
    type: string
    sql: ${TABLE}.REMIT_ADDR3 ;;
  }

  dimension: remit_addr4 {
    type: string
    sql: ${TABLE}.REMIT_ADDR4 ;;
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
