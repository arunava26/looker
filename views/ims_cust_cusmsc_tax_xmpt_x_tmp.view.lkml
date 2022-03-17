# The name of this view in Looker is "Ims Cust Cusmsc Tax Xmpt X Tmp"
view: ims_cust_cusmsc_tax_xmpt_x_tmp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_CUST_CUSMSC_TAX_XMPT_X_TMP`
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

  dimension: exempt_type {
    type: string
    sql: ${TABLE}.EXEMPT_TYPE ;;
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

  dimension: renewal_date {
    type: number
    sql: ${TABLE}.RENEWAL_DATE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_renewal_date {
    type: sum
    sql: ${renewal_date} ;;
  }

  measure: average_renewal_date {
    type: average
    sql: ${renewal_date} ;;
  }

  dimension: renewal_period {
    type: number
    sql: ${TABLE}.RENEWAL_PERIOD ;;
  }

  dimension: segment_type {
    type: string
    sql: ${TABLE}.SEGMENT_TYPE ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.STATE_CODE ;;
  }

  dimension: tax_exempt_date {
    type: number
    sql: ${TABLE}.TAX_EXEMPT_DATE ;;
  }

  dimension: tax_exempt_nbr {
    type: string
    sql: ${TABLE}.TAX_EXEMPT_NBR ;;
  }

  dimension: tax_exempt_nbr_lst10 {
    type: string
    sql: ${TABLE}.TAX_EXEMPT_NBR_LST10 ;;
  }

  dimension: tax_ltr_date {
    type: number
    sql: ${TABLE}.TAX_LTR_DATE ;;
  }

  dimension: tax_ltr_nbr {
    type: number
    sql: ${TABLE}.TAX_LTR_NBR ;;
  }

  dimension: vat_desc {
    type: string
    sql: ${TABLE}.VAT_DESC ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
